
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; scalar_t__ pm_cap; } ;
struct net_device {int features; int * dev_addr; int max_mtu; int min_mtu; int watchdog_timeo; int irq; int * ethtool_ops; int * netdev_ops; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct TYPE_5__ {int ipg_state; int ipg; TYPE_3__ ipg_timer; } ;
struct TYPE_4__ {int phy_id; int mdio_write; int mdio_read; struct net_device* dev; } ;
struct amd8111e_priv {int options; int ext_phy_id; int ext_phy_addr; scalar_t__ mmio; TYPE_2__ ipg_data; TYPE_1__ mii_if; int napi; int ext_phy_option; int lock; scalar_t__ pm_cap; struct net_device* amd8111e_net_dev; struct pci_dev* pci_dev; } ;


 int AMD8111E_MAX_MTU ;
 int AMD8111E_MIN_MTU ;
 int AMD8111E_TX_TIMEOUT ;
 scalar_t__ CHIPID ;
 int CSTATE ;
 int DEFAULT_IPG ;
 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int ETH_ALEN ;
 int IORESOURCE_MEM ;
 scalar_t__ IPG_CONVERGE_JIFFIES ;
 int MODULE_NAME ;
 int MODULE_VERS ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int OPTION_DYN_IPG_ENABLE ;
 int OPTION_INTR_COAL_ENABLE ;
 scalar_t__ PADR ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int amd8111e_config_ipg ;
 int amd8111e_mdio_read ;
 int amd8111e_mdio_write ;
 int amd8111e_netdev_ops ;
 int amd8111e_probe_ext_phy (struct net_device*) ;
 int amd8111e_rx_poll ;
 int amd8111e_set_rx_buff_len (struct net_device*) ;
 size_t card_idx ;
 int chip_version ;
 scalar_t__* coalesce ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,...) ;
 scalar_t__ devm_ioremap (int *,unsigned long,unsigned long) ;
 scalar_t__* dynamic_ipg ;
 int free_netdev (struct net_device*) ;
 scalar_t__ jiffies ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int ops ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int ) ;
 unsigned long pci_resource_len (struct pci_dev*,int ) ;
 unsigned long pci_resource_start (struct pci_dev*,int ) ;
 scalar_t__ pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int readb (scalar_t__) ;
 int readl (scalar_t__) ;
 int register_netdev (struct net_device*) ;
 int * speed_duplex ;
 int spin_lock_init (int *) ;
 int timer_setup (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int amd8111e_probe_one(struct pci_dev *pdev,
      const struct pci_device_id *ent)
{
 int err, i;
 unsigned long reg_addr,reg_len;
 struct amd8111e_priv *lp;
 struct net_device *dev;

 err = pci_enable_device(pdev);
 if(err){
  dev_err(&pdev->dev, "Cannot enable new PCI device\n");
  return err;
 }

 if(!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM)){
  dev_err(&pdev->dev, "Cannot find PCI base address\n");
  err = -ENODEV;
  goto err_disable_pdev;
 }

 err = pci_request_regions(pdev, MODULE_NAME);
 if(err){
  dev_err(&pdev->dev, "Cannot obtain PCI resources\n");
  goto err_disable_pdev;
 }

 pci_set_master(pdev);


 if (!pdev->pm_cap) {
  dev_err(&pdev->dev, "No Power Management capability\n");
  err = -ENODEV;
  goto err_free_reg;
 }


 if (pci_set_dma_mask(pdev, DMA_BIT_MASK(32)) < 0) {
  dev_err(&pdev->dev, "DMA not supported\n");
  err = -ENODEV;
  goto err_free_reg;
 }

 reg_addr = pci_resource_start(pdev, 0);
 reg_len = pci_resource_len(pdev, 0);

 dev = alloc_etherdev(sizeof(struct amd8111e_priv));
 if (!dev) {
  err = -ENOMEM;
  goto err_free_reg;
 }

 SET_NETDEV_DEV(dev, &pdev->dev);





 lp = netdev_priv(dev);
 lp->pci_dev = pdev;
 lp->amd8111e_net_dev = dev;
 lp->pm_cap = pdev->pm_cap;

 spin_lock_init(&lp->lock);

 lp->mmio = devm_ioremap(&pdev->dev, reg_addr, reg_len);
 if (!lp->mmio) {
  dev_err(&pdev->dev, "Cannot map device registers\n");
  err = -ENOMEM;
  goto err_free_dev;
 }


 for (i = 0; i < ETH_ALEN; i++)
  dev->dev_addr[i] = readb(lp->mmio + PADR + i);


 lp->ext_phy_option = speed_duplex[card_idx];
 if(coalesce[card_idx])
  lp->options |= OPTION_INTR_COAL_ENABLE;
 if(dynamic_ipg[card_idx++])
  lp->options |= OPTION_DYN_IPG_ENABLE;



 dev->netdev_ops = &amd8111e_netdev_ops;
 dev->ethtool_ops = &ops;
 dev->irq =pdev->irq;
 dev->watchdog_timeo = AMD8111E_TX_TIMEOUT;
 dev->min_mtu = AMD8111E_MIN_MTU;
 dev->max_mtu = AMD8111E_MAX_MTU;
 netif_napi_add(dev, &lp->napi, amd8111e_rx_poll, 32);





 amd8111e_probe_ext_phy(dev);


 lp->mii_if.dev = dev;
 lp->mii_if.mdio_read = amd8111e_mdio_read;
 lp->mii_if.mdio_write = amd8111e_mdio_write;
 lp->mii_if.phy_id = lp->ext_phy_addr;


 amd8111e_set_rx_buff_len(dev);


 err = register_netdev(dev);
 if (err) {
  dev_err(&pdev->dev, "Cannot register net device\n");
  goto err_free_dev;
 }

 pci_set_drvdata(pdev, dev);


 if(lp->options & OPTION_DYN_IPG_ENABLE){
  timer_setup(&lp->ipg_data.ipg_timer, amd8111e_config_ipg, 0);
  lp->ipg_data.ipg_timer.expires = jiffies +
       IPG_CONVERGE_JIFFIES;
  lp->ipg_data.ipg = DEFAULT_IPG;
  lp->ipg_data.ipg_state = CSTATE;
 }


     chip_version = (readl(lp->mmio + CHIPID) & 0xf0000000)>>28;
 dev_info(&pdev->dev, "AMD-8111e Driver Version: %s\n", MODULE_VERS);
 dev_info(&pdev->dev, "[ Rev %x ] PCI 10/100BaseT Ethernet %pM\n",
   chip_version, dev->dev_addr);
 if (lp->ext_phy_id)
  dev_info(&pdev->dev, "Found MII PHY ID 0x%08x at address 0x%02x\n",
    lp->ext_phy_id, lp->ext_phy_addr);
 else
  dev_info(&pdev->dev, "Couldn't detect MII PHY, assuming address 0x01\n");

     return 0;

err_free_dev:
 free_netdev(dev);

err_free_reg:
 pci_release_regions(pdev);

err_disable_pdev:
 pci_disable_device(pdev);
 return err;

}
