
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int hw_features; int vlan_features; int phydev; int dev_addr; int irq; } ;
struct bgmac {int feature_flags; int int_mask; int dev; struct net_device* net_dev; int napi; int irq; } ;


 int BCMA_OOB_SEL_OUT_A30 ;
 int BGMAC_FEAT_IDM_MASK ;
 int BGMAC_FEAT_IRQ_ID_OOB_6 ;
 int BGMAC_IS_ERRMASK ;
 int BGMAC_IS_RX ;
 int BGMAC_IS_TX_MASK ;
 int BGMAC_WEIGHT ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_SG ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 scalar_t__ bcm47xx_nvram_getenv (char*,int *,int ) ;
 int bgmac_chip_intrs_off (struct bgmac*) ;
 int bgmac_chip_reset (struct bgmac*) ;
 int bgmac_clk_enable (struct bgmac*,int ) ;
 int bgmac_dma_alloc (struct bgmac*) ;
 int bgmac_dma_free (struct bgmac*) ;
 int bgmac_idm_write (struct bgmac*,int ,int) ;
 int bgmac_phy_connect (struct bgmac*) ;
 int bgmac_poll ;
 int dev_err (int ,char*,...) ;
 int dev_set_drvdata (int ,struct bgmac*) ;
 int dev_warn (int ,char*,int ) ;
 int eth_hw_addr_random (struct net_device*) ;
 int is_valid_ether_addr (int ) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int phy_disconnect (int ) ;
 int register_netdev (struct net_device*) ;

int bgmac_enet_probe(struct bgmac *bgmac)
{
 struct net_device *net_dev = bgmac->net_dev;
 int err;

 bgmac_chip_intrs_off(bgmac);

 net_dev->irq = bgmac->irq;
 SET_NETDEV_DEV(net_dev, bgmac->dev);
 dev_set_drvdata(bgmac->dev, bgmac);

 if (!is_valid_ether_addr(net_dev->dev_addr)) {
  dev_err(bgmac->dev, "Invalid MAC addr: %pM\n",
   net_dev->dev_addr);
  eth_hw_addr_random(net_dev);
  dev_warn(bgmac->dev, "Using random MAC: %pM\n",
    net_dev->dev_addr);
 }




 bgmac_clk_enable(bgmac, 0);


 if (!(bgmac->feature_flags & BGMAC_FEAT_IDM_MASK)) {
  if (bgmac->feature_flags & BGMAC_FEAT_IRQ_ID_OOB_6)
   bgmac_idm_write(bgmac, BCMA_OOB_SEL_OUT_A30, 0x86);
 }

 bgmac_chip_reset(bgmac);

 err = bgmac_dma_alloc(bgmac);
 if (err) {
  dev_err(bgmac->dev, "Unable to alloc memory for DMA\n");
  goto err_out;
 }

 bgmac->int_mask = BGMAC_IS_ERRMASK | BGMAC_IS_RX | BGMAC_IS_TX_MASK;
 if (bcm47xx_nvram_getenv("et0_no_txint", ((void*)0), 0) == 0)
  bgmac->int_mask &= ~BGMAC_IS_TX_MASK;

 netif_napi_add(net_dev, &bgmac->napi, bgmac_poll, BGMAC_WEIGHT);

 err = bgmac_phy_connect(bgmac);
 if (err) {
  dev_err(bgmac->dev, "Cannot connect to phy\n");
  goto err_dma_free;
 }

 net_dev->features = NETIF_F_SG | NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
 net_dev->hw_features = net_dev->features;
 net_dev->vlan_features = net_dev->features;

 err = register_netdev(bgmac->net_dev);
 if (err) {
  dev_err(bgmac->dev, "Cannot register net device\n");
  goto err_phy_disconnect;
 }

 netif_carrier_off(net_dev);

 return 0;

err_phy_disconnect:
 phy_disconnect(net_dev->phydev);
err_dma_free:
 bgmac_dma_free(bgmac);
err_out:

 return err;
}
