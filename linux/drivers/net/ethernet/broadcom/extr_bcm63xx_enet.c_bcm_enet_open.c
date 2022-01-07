
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sockaddr {int sa_data; } ;
struct sk_buff {int dummy; } ;
struct phy_device {int dummy; } ;
struct net_device {int irq; int dev_addr; int name; } ;
struct device {int dummy; } ;
struct bcm_enet_priv {int old_duplex; int old_pause; int rx_ring_size; int rx_desc_dma; unsigned int rx_desc_alloc_size; int tx_ring_size; int tx_desc_dma; unsigned int tx_desc_alloc_size; int tx_desc_count; int hw_mtu; int dma_maxburst; int dma_chan_en_mask; int dma_chan_int_mask; int irq_rx; int irq_tx; struct bcm_enet_desc* rx_desc_cpu; struct bcm_enet_desc* tx_desc_cpu; int * tx_skb; int * rx_skb; int rx_skb_size; int tx_chan; int rx_chan; int napi; scalar_t__ dma_has_sram; scalar_t__ rx_curr_desc; scalar_t__ rx_dirty_desc; scalar_t__ rx_desc_count; int tx_lock; scalar_t__ tx_curr_desc; scalar_t__ tx_dirty_desc; scalar_t__ old_link; int pause_auto; int pause_rx; int phy_id; TYPE_2__* mii_bus; scalar_t__ has_phy; TYPE_1__* pdev; } ;
struct bcm_enet_desc {int address; } ;
typedef int phy_id ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {struct device dev; } ;


 int BCMENET_TX_FIFO_TRESH ;
 int DMA_FROM_DEVICE ;
 int ENETDMAC_BUFALLOC ;
 int ENETDMAC_CHANCFG ;
 int ENETDMAC_FC ;
 int ENETDMAC_IR ;
 int ENETDMAC_IRMASK ;
 int ENETDMAC_LEN ;
 int ENETDMAC_MAXBURST ;
 int ENETDMAC_RSTART ;
 int ENETDMAS_RSTART_REG ;
 int ENETDMAS_SRAM2_REG ;
 int ENETDMAS_SRAM3_REG ;
 int ENETDMAS_SRAM4_REG ;
 int ENETDMA_BUFALLOC_FORCE_MASK ;
 int ENETDMA_BUFALLOC_REG (int ) ;
 int ENETDMA_CFG_EN_MASK ;
 int ENETDMA_CFG_REG ;
 int ENETDMA_FLOWCH_REG (int ) ;
 int ENETDMA_FLOWCL_REG (int ) ;
 int ENET_CTL_ENABLE_MASK ;
 int ENET_CTL_REG ;
 int ENET_IRMASK_REG ;
 int ENET_IR_MIB ;
 int ENET_IR_REG ;
 int ENET_PMH_REG (int) ;
 int ENET_PML_REG (int) ;
 int ENET_RXMAXLEN_REG ;
 int ENET_TXMAXLEN_REG ;
 int ENET_TXWMARK_REG ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int MII_BUS_ID_SIZE ;
 char* PHY_ID_FMT ;
 int PHY_INTERFACE_MODE_MII ;
 int PTR_ERR (struct phy_device*) ;
 int SPEED_100 ;
 int bcm_enet_adjust_link (struct net_device*) ;
 int bcm_enet_adjust_phy_link ;
 int bcm_enet_isr_dma ;
 int bcm_enet_isr_mac ;
 scalar_t__ bcm_enet_refill_rx (struct net_device*) ;
 int bcm_enet_set_mac_address (struct net_device*,struct sockaddr*) ;
 int dev_err (struct device*,char*) ;
 void* dma_alloc_coherent (struct device*,unsigned int,int*,int ) ;
 int dma_free_coherent (struct device*,unsigned int,struct bcm_enet_desc*,int) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int enet_dma_writel (struct bcm_enet_priv*,int,int ) ;
 int enet_dmac_writel (struct bcm_enet_priv*,int,int ,int ) ;
 int enet_dmas_writel (struct bcm_enet_priv*,int,int ,int ) ;
 int enet_readl (struct bcm_enet_priv*,int ) ;
 int enet_writel (struct bcm_enet_priv*,int,int ) ;
 int free_irq (int ,struct net_device*) ;
 void* kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int kfree_skb (int ) ;
 int memcpy (int ,int ,int ) ;
 int napi_enable (int *) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_attached_info (struct phy_device*) ;
 struct phy_device* phy_connect (struct net_device*,char*,int ,int ) ;
 int phy_disconnect (struct phy_device*) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int phy_set_sym_pause (struct phy_device*,int ,int ,int ) ;
 int phy_start (struct phy_device*) ;
 int phy_support_sym_pause (struct phy_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int snprintf (char*,int,char*,int ,int ) ;
 int spin_lock_init (int *) ;
 int wmb () ;

__attribute__((used)) static int bcm_enet_open(struct net_device *dev)
{
 struct bcm_enet_priv *priv;
 struct sockaddr addr;
 struct device *kdev;
 struct phy_device *phydev;
 int i, ret;
 unsigned int size;
 char phy_id[MII_BUS_ID_SIZE + 3];
 void *p;
 u32 val;

 priv = netdev_priv(dev);
 kdev = &priv->pdev->dev;

 if (priv->has_phy) {

  snprintf(phy_id, sizeof(phy_id), PHY_ID_FMT,
    priv->mii_bus->id, priv->phy_id);

  phydev = phy_connect(dev, phy_id, bcm_enet_adjust_phy_link,
         PHY_INTERFACE_MODE_MII);

  if (IS_ERR(phydev)) {
   dev_err(kdev, "could not attach to PHY\n");
   return PTR_ERR(phydev);
  }


  phy_support_sym_pause(phydev);
  phy_set_max_speed(phydev, SPEED_100);
  phy_set_sym_pause(phydev, priv->pause_rx, priv->pause_rx,
      priv->pause_auto);

  phy_attached_info(phydev);

  priv->old_link = 0;
  priv->old_duplex = -1;
  priv->old_pause = -1;
 } else {
  phydev = ((void*)0);
 }


 enet_writel(priv, 0, ENET_IRMASK_REG);
 enet_dmac_writel(priv, 0, ENETDMAC_IRMASK, priv->rx_chan);
 enet_dmac_writel(priv, 0, ENETDMAC_IRMASK, priv->tx_chan);

 ret = request_irq(dev->irq, bcm_enet_isr_mac, 0, dev->name, dev);
 if (ret)
  goto out_phy_disconnect;

 ret = request_irq(priv->irq_rx, bcm_enet_isr_dma, 0,
     dev->name, dev);
 if (ret)
  goto out_freeirq;

 ret = request_irq(priv->irq_tx, bcm_enet_isr_dma,
     0, dev->name, dev);
 if (ret)
  goto out_freeirq_rx;


 for (i = 0; i < 4; i++) {
  enet_writel(priv, 0, ENET_PML_REG(i));
  enet_writel(priv, 0, ENET_PMH_REG(i));
 }


 memcpy(addr.sa_data, dev->dev_addr, ETH_ALEN);
 bcm_enet_set_mac_address(dev, &addr);


 size = priv->rx_ring_size * sizeof(struct bcm_enet_desc);
 p = dma_alloc_coherent(kdev, size, &priv->rx_desc_dma, GFP_KERNEL);
 if (!p) {
  ret = -ENOMEM;
  goto out_freeirq_tx;
 }

 priv->rx_desc_alloc_size = size;
 priv->rx_desc_cpu = p;


 size = priv->tx_ring_size * sizeof(struct bcm_enet_desc);
 p = dma_alloc_coherent(kdev, size, &priv->tx_desc_dma, GFP_KERNEL);
 if (!p) {
  ret = -ENOMEM;
  goto out_free_rx_ring;
 }

 priv->tx_desc_alloc_size = size;
 priv->tx_desc_cpu = p;

 priv->tx_skb = kcalloc(priv->tx_ring_size, sizeof(struct sk_buff *),
          GFP_KERNEL);
 if (!priv->tx_skb) {
  ret = -ENOMEM;
  goto out_free_tx_ring;
 }

 priv->tx_desc_count = priv->tx_ring_size;
 priv->tx_dirty_desc = 0;
 priv->tx_curr_desc = 0;
 spin_lock_init(&priv->tx_lock);


 priv->rx_skb = kcalloc(priv->rx_ring_size, sizeof(struct sk_buff *),
          GFP_KERNEL);
 if (!priv->rx_skb) {
  ret = -ENOMEM;
  goto out_free_tx_skb;
 }

 priv->rx_desc_count = 0;
 priv->rx_dirty_desc = 0;
 priv->rx_curr_desc = 0;


 if (priv->dma_has_sram)
  enet_dma_writel(priv, ENETDMA_BUFALLOC_FORCE_MASK | 0,
    ENETDMA_BUFALLOC_REG(priv->rx_chan));
 else
  enet_dmac_writel(priv, ENETDMA_BUFALLOC_FORCE_MASK | 0,
    ENETDMAC_BUFALLOC, priv->rx_chan);

 if (bcm_enet_refill_rx(dev)) {
  dev_err(kdev, "cannot allocate rx skb queue\n");
  ret = -ENOMEM;
  goto out;
 }


 if (priv->dma_has_sram) {
  enet_dmas_writel(priv, priv->rx_desc_dma,
     ENETDMAS_RSTART_REG, priv->rx_chan);
  enet_dmas_writel(priv, priv->tx_desc_dma,
    ENETDMAS_RSTART_REG, priv->tx_chan);
 } else {
  enet_dmac_writel(priv, priv->rx_desc_dma,
    ENETDMAC_RSTART, priv->rx_chan);
  enet_dmac_writel(priv, priv->tx_desc_dma,
    ENETDMAC_RSTART, priv->tx_chan);
 }


 if (priv->dma_has_sram) {
  enet_dmas_writel(priv, 0, ENETDMAS_SRAM2_REG, priv->rx_chan);
  enet_dmas_writel(priv, 0, ENETDMAS_SRAM2_REG, priv->tx_chan);
  enet_dmas_writel(priv, 0, ENETDMAS_SRAM3_REG, priv->rx_chan);
  enet_dmas_writel(priv, 0, ENETDMAS_SRAM3_REG, priv->tx_chan);
  enet_dmas_writel(priv, 0, ENETDMAS_SRAM4_REG, priv->rx_chan);
  enet_dmas_writel(priv, 0, ENETDMAS_SRAM4_REG, priv->tx_chan);
 } else {
  enet_dmac_writel(priv, 0, ENETDMAC_FC, priv->rx_chan);
  enet_dmac_writel(priv, 0, ENETDMAC_FC, priv->tx_chan);
 }


 enet_writel(priv, priv->hw_mtu, ENET_RXMAXLEN_REG);
 enet_writel(priv, priv->hw_mtu, ENET_TXMAXLEN_REG);


 enet_dmac_writel(priv, priv->dma_maxburst,
    ENETDMAC_MAXBURST, priv->rx_chan);
 enet_dmac_writel(priv, priv->dma_maxburst,
    ENETDMAC_MAXBURST, priv->tx_chan);


 enet_writel(priv, BCMENET_TX_FIFO_TRESH, ENET_TXWMARK_REG);


 if (priv->dma_has_sram) {
  val = priv->rx_ring_size / 3;
  enet_dma_writel(priv, val, ENETDMA_FLOWCL_REG(priv->rx_chan));
  val = (priv->rx_ring_size * 2) / 3;
  enet_dma_writel(priv, val, ENETDMA_FLOWCH_REG(priv->rx_chan));
 } else {
  enet_dmac_writel(priv, 5, ENETDMAC_FC, priv->rx_chan);
  enet_dmac_writel(priv, priv->rx_ring_size, ENETDMAC_LEN, priv->rx_chan);
  enet_dmac_writel(priv, priv->tx_ring_size, ENETDMAC_LEN, priv->tx_chan);
 }



 wmb();
 val = enet_readl(priv, ENET_CTL_REG);
 val |= ENET_CTL_ENABLE_MASK;
 enet_writel(priv, val, ENET_CTL_REG);
 if (priv->dma_has_sram)
  enet_dma_writel(priv, ENETDMA_CFG_EN_MASK, ENETDMA_CFG_REG);
 enet_dmac_writel(priv, priv->dma_chan_en_mask,
    ENETDMAC_CHANCFG, priv->rx_chan);


 enet_writel(priv, ENET_IR_MIB, ENET_IR_REG);
 enet_writel(priv, ENET_IR_MIB, ENET_IRMASK_REG);


 enet_dmac_writel(priv, priv->dma_chan_int_mask,
    ENETDMAC_IR, priv->rx_chan);
 enet_dmac_writel(priv, priv->dma_chan_int_mask,
    ENETDMAC_IR, priv->tx_chan);


 napi_enable(&priv->napi);

 enet_dmac_writel(priv, priv->dma_chan_int_mask,
    ENETDMAC_IRMASK, priv->rx_chan);
 enet_dmac_writel(priv, priv->dma_chan_int_mask,
    ENETDMAC_IRMASK, priv->tx_chan);

 if (phydev)
  phy_start(phydev);
 else
  bcm_enet_adjust_link(dev);

 netif_start_queue(dev);
 return 0;

out:
 for (i = 0; i < priv->rx_ring_size; i++) {
  struct bcm_enet_desc *desc;

  if (!priv->rx_skb[i])
   continue;

  desc = &priv->rx_desc_cpu[i];
  dma_unmap_single(kdev, desc->address, priv->rx_skb_size,
     DMA_FROM_DEVICE);
  kfree_skb(priv->rx_skb[i]);
 }
 kfree(priv->rx_skb);

out_free_tx_skb:
 kfree(priv->tx_skb);

out_free_tx_ring:
 dma_free_coherent(kdev, priv->tx_desc_alloc_size,
     priv->tx_desc_cpu, priv->tx_desc_dma);

out_free_rx_ring:
 dma_free_coherent(kdev, priv->rx_desc_alloc_size,
     priv->rx_desc_cpu, priv->rx_desc_dma);

out_freeirq_tx:
 free_irq(priv->irq_tx, dev);

out_freeirq_rx:
 free_irq(priv->irq_rx, dev);

out_freeirq:
 free_irq(dev->irq, dev);

out_phy_disconnect:
 if (phydev)
  phy_disconnect(phydev);

 return ret;
}
