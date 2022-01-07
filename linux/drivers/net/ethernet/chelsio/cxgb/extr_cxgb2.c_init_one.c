
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port_info {struct net_device* dev; } ;
struct pci_device_id {int driver_data; } ;
struct pci_dev {int irq; int dev; } ;
struct net_device {int if_port; unsigned long mem_start; unsigned long mem_end; int hw_features; int features; int hard_header_len; int name; scalar_t__ max_mtu; int * ethtool_ops; int * netdev_ops; struct adapter* ml_priv; int irq; } ;
struct cpl_tx_pkt_lso {int dummy; } ;
struct cpl_tx_pkt {int dummy; } ;
struct board_info {int port_number; int board; int desc; } ;
struct TYPE_3__ {int width; int speed; scalar_t__ is_pcix; } ;
struct TYPE_4__ {TYPE_1__ pci; int chip_revision; } ;
struct adapter {unsigned long mmio_len; struct port_info* port; scalar_t__ regs; int t1powersave; TYPE_2__ params; int name; int registered_device_map; int napi; int stats_update_task; int ext_intr_handler_task; int mac_lock; int async_lock; int work_lock; int tpi_lock; int msg_enable; struct pci_dev* pdev; } ;







 int DMA_BIT_MASK (int) ;
 int DRV_DESCRIPTION ;
 int DRV_NAME ;
 int DRV_VERSION ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ ETH_DATA_LEN ;
 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ ETH_HLEN ;
 int HCLOCK ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 int LCLOCK ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_LLTX ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 scalar_t__ PM3393_MAX_FRAME_SIZE ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 scalar_t__ VSC7326_MAX_MTU ;
 int __set_bit (int,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int cxgb_netdev_ops ;
 int dflt_msg_enable ;
 int ext_intr_task ;
 int free_netdev (struct net_device*) ;
 scalar_t__ ioremap (unsigned long,unsigned long) ;
 int iounmap (scalar_t__) ;
 int is_T2 (struct adapter*) ;
 int mac_stats_task ;
 struct adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int ) ;
 unsigned long pci_resource_len (struct pci_dev*,int ) ;
 unsigned long pci_resource_start (struct pci_dev*,int ) ;
 scalar_t__ pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ,int ,int ,char*,int ,int ) ;
 int pr_info_once (char*,int ,int ) ;
 int pr_warn (char*,int ,int ) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int t1_clock (struct adapter*,scalar_t__) ;
 int t1_ethtool_ops ;
 int t1_free_sw_modules (struct adapter*) ;
 struct board_info* t1_get_board_info (int ) ;
 scalar_t__ t1_get_board_rev (struct adapter*,struct board_info const*,TYPE_2__*) ;
 scalar_t__ t1_init_sw_modules (struct adapter*,struct board_info const*) ;
 scalar_t__ t1_is_T1B (struct adapter*) ;
 int t1_poll ;
 scalar_t__ t1powersave ;
 scalar_t__ vlan_tso_capable (struct adapter*) ;

__attribute__((used)) static int init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int i, err, pci_using_dac = 0;
 unsigned long mmio_start, mmio_len;
 const struct board_info *bi;
 struct adapter *adapter = ((void*)0);
 struct port_info *pi;

 pr_info_once("%s - version %s\n", DRV_DESCRIPTION, DRV_VERSION);

 err = pci_enable_device(pdev);
 if (err)
  return err;

 if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM)) {
  pr_err("%s: cannot find PCI device memory base address\n",
         pci_name(pdev));
  err = -ENODEV;
  goto out_disable_pdev;
 }

 if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(64))) {
  pci_using_dac = 1;

  if (pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64))) {
   pr_err("%s: unable to obtain 64-bit DMA for "
          "consistent allocations\n", pci_name(pdev));
   err = -ENODEV;
   goto out_disable_pdev;
  }

 } else if ((err = pci_set_dma_mask(pdev, DMA_BIT_MASK(32))) != 0) {
  pr_err("%s: no usable DMA configuration\n", pci_name(pdev));
  goto out_disable_pdev;
 }

 err = pci_request_regions(pdev, DRV_NAME);
 if (err) {
  pr_err("%s: cannot obtain PCI resources\n", pci_name(pdev));
  goto out_disable_pdev;
 }

 pci_set_master(pdev);

 mmio_start = pci_resource_start(pdev, 0);
 mmio_len = pci_resource_len(pdev, 0);
 bi = t1_get_board_info(ent->driver_data);

 for (i = 0; i < bi->port_number; ++i) {
  struct net_device *netdev;

  netdev = alloc_etherdev(adapter ? 0 : sizeof(*adapter));
  if (!netdev) {
   err = -ENOMEM;
   goto out_free_dev;
  }

  SET_NETDEV_DEV(netdev, &pdev->dev);

  if (!adapter) {
   adapter = netdev_priv(netdev);
   adapter->pdev = pdev;
   adapter->port[0].dev = netdev;

   adapter->regs = ioremap(mmio_start, mmio_len);
   if (!adapter->regs) {
    pr_err("%s: cannot map device registers\n",
           pci_name(pdev));
    err = -ENOMEM;
    goto out_free_dev;
   }

   if (t1_get_board_rev(adapter, bi, &adapter->params)) {
    err = -ENODEV;
    goto out_free_dev;
   }

   adapter->name = pci_name(pdev);
   adapter->msg_enable = dflt_msg_enable;
   adapter->mmio_len = mmio_len;

   spin_lock_init(&adapter->tpi_lock);
   spin_lock_init(&adapter->work_lock);
   spin_lock_init(&adapter->async_lock);
   spin_lock_init(&adapter->mac_lock);

   INIT_WORK(&adapter->ext_intr_handler_task,
      ext_intr_task);
   INIT_DELAYED_WORK(&adapter->stats_update_task,
       mac_stats_task);

   pci_set_drvdata(pdev, netdev);
  }

  pi = &adapter->port[i];
  pi->dev = netdev;
  netif_carrier_off(netdev);
  netdev->irq = pdev->irq;
  netdev->if_port = i;
  netdev->mem_start = mmio_start;
  netdev->mem_end = mmio_start + mmio_len - 1;
  netdev->ml_priv = adapter;
  netdev->hw_features |= NETIF_F_SG | NETIF_F_IP_CSUM |
   NETIF_F_RXCSUM;
  netdev->features |= NETIF_F_SG | NETIF_F_IP_CSUM |
   NETIF_F_RXCSUM | NETIF_F_LLTX;

  if (pci_using_dac)
   netdev->features |= NETIF_F_HIGHDMA;
  if (vlan_tso_capable(adapter)) {
   netdev->features |=
    NETIF_F_HW_VLAN_CTAG_TX |
    NETIF_F_HW_VLAN_CTAG_RX;
   netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_RX;


   if (!(is_T2(adapter)) || bi->port_number != 4) {
    netdev->hw_features |= NETIF_F_TSO;
    netdev->features |= NETIF_F_TSO;
   }
  }

  netdev->netdev_ops = &cxgb_netdev_ops;
  netdev->hard_header_len += (netdev->hw_features & NETIF_F_TSO) ?
   sizeof(struct cpl_tx_pkt_lso) : sizeof(struct cpl_tx_pkt);

  netif_napi_add(netdev, &adapter->napi, t1_poll, 64);

  netdev->ethtool_ops = &t1_ethtool_ops;

  switch (bi->board) {
  case 131:
  case 129:
  case 128:
  case 130:
   netdev->max_mtu = PM3393_MAX_FRAME_SIZE -
       (ETH_HLEN + ETH_FCS_LEN);
   break;
  case 132:
   netdev->max_mtu = VSC7326_MAX_MTU;
   break;
  default:
   netdev->max_mtu = ETH_DATA_LEN;
   break;
  }
 }

 if (t1_init_sw_modules(adapter, bi) < 0) {
  err = -ENODEV;
  goto out_free_dev;
 }







 for (i = 0; i < bi->port_number; ++i) {
  err = register_netdev(adapter->port[i].dev);
  if (err)
   pr_warn("%s: cannot register net device %s, skipping\n",
    pci_name(pdev), adapter->port[i].dev->name);
  else {




   if (!adapter->registered_device_map)
    adapter->name = adapter->port[i].dev->name;

   __set_bit(i, &adapter->registered_device_map);
  }
 }
 if (!adapter->registered_device_map) {
  pr_err("%s: could not register any net devices\n",
         pci_name(pdev));
  goto out_release_adapter_res;
 }

 pr_info("%s: %s (rev %d), %s %dMHz/%d-bit\n",
  adapter->name, bi->desc, adapter->params.chip_revision,
  adapter->params.pci.is_pcix ? "PCIX" : "PCI",
  adapter->params.pci.speed, adapter->params.pci.width);




 if (t1powersave)
  adapter->t1powersave = LCLOCK;
 else
  adapter->t1powersave = HCLOCK;
 if (t1_is_T1B(adapter))
  t1_clock(adapter, t1powersave);

 return 0;

out_release_adapter_res:
 t1_free_sw_modules(adapter);
out_free_dev:
 if (adapter) {
  if (adapter->regs)
   iounmap(adapter->regs);
  for (i = bi->port_number - 1; i >= 0; --i)
   if (adapter->port[i].dev)
    free_netdev(adapter->port[i].dev);
 }
 pci_release_regions(pdev);
out_disable_pdev:
 pci_disable_device(pdev);
 return err;
}
