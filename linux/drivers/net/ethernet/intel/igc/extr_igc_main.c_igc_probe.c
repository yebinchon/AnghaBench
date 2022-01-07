
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int dev; int subsystem_device; int subsystem_vendor; int revision; int device; int vendor; } ;
struct net_device {int watchdog_timeo; int addr_len; TYPE_7__* dev_addr; int name; int max_mtu; int min_mtu; int features; int hw_features; int mem_end; int mem_start; int * netdev_ops; } ;
struct igc_info {int (* get_invariants ) (struct igc_hw*) ;int phy_ops; int mac_ops; } ;
struct TYPE_10__ {void* current_mode; void* requested_mode; } ;
struct TYPE_16__ {scalar_t__ (* read_mac_addr ) (struct igc_hw*) ;int (* reset_hw ) (struct igc_hw*) ;} ;
struct TYPE_12__ {int autoneg_advertised; TYPE_7__ ops; } ;
struct TYPE_15__ {int autoneg; int addr; TYPE_7__ ops; } ;
struct TYPE_13__ {scalar_t__ (* validate ) (struct igc_hw*) ;} ;
struct TYPE_14__ {TYPE_4__ ops; } ;
struct TYPE_11__ {int func; } ;
struct igc_hw {TYPE_1__ fc; TYPE_3__ phy; TYPE_6__ mac; TYPE_5__ nvm; int subsystem_device_id; int subsystem_vendor_id; int revision_id; int device_id; int vendor_id; scalar_t__ hw_addr; TYPE_2__ bus; struct igc_adapter* back; } ;
struct igc_adapter {int fc_autoneg; scalar_t__ io_addr; struct igc_info ei; int watchdog_task; int reset_task; int phy_info_timer; int watchdog_timer; int msg_enable; int port_num; struct igc_hw hw; struct pci_dev* pdev; struct net_device* netdev; } ;


 int DEFAULT_MSG_ENABLE ;
 int DMA_BIT_MASK (int) ;
 int EIO ;
 int ENOMEM ;
 int ETH_MIN_MTU ;
 int HZ ;
 int I225_RXPBSIZE_DEFAULT ;
 int I225_TXPBSIZE_DEFAULT ;
 int IFNAMSIZ ;
 int IGC_MAX_TX_QUEUES ;
 int IGC_RXPBS ;
 int IGC_TXPBS ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 int MAX_STD_JUMBO_FRAME_SIZE ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_NTUPLE ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int debug ;
 int dev_err (int *,char*) ;
 int dma_set_coherent_mask (int *,int ) ;
 int dma_set_mask (int *,int ) ;
 scalar_t__ eth_platform_get_mac_address (int *,int ) ;
 int free_netdev (struct net_device*) ;
 int igc_check_reset_block (struct igc_hw*) ;
 int igc_clear_interrupt_scheme (struct igc_adapter*) ;
 int igc_driver_name ;
 void* igc_fc_default ;
 scalar_t__ igc_get_flash_presence_i225 (struct igc_hw*) ;
 int igc_get_hw_control (struct igc_adapter*) ;
 struct igc_info** igc_info_tbl ;
 int igc_netdev_ops ;
 int igc_release_hw_control (struct igc_adapter*) ;
 int igc_reset (struct igc_adapter*) ;
 int igc_reset_phy (struct igc_hw*) ;
 int igc_reset_task ;
 int igc_set_ethtool_ops (struct net_device*) ;
 int igc_sw_init (struct igc_adapter*) ;
 int igc_update_phy_info ;
 int igc_watchdog ;
 int igc_watchdog_task ;
 scalar_t__ ioremap (int ,int ) ;
 int iounmap (scalar_t__) ;
 int is_valid_ether_addr (TYPE_7__*) ;
 int memcpy (TYPE_7__*,int ,int) ;
 int netdev_info (struct net_device*,char*,TYPE_7__*) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;
 int pci_release_selected_regions (struct pci_dev*,int ) ;
 int pci_request_selected_regions (struct pci_dev*,int ,int ) ;
 int pci_resource_end (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_select_bars (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcie_print_link_status (struct pci_dev*) ;
 int register_netdev (struct net_device*) ;
 int strncpy (int ,char*,int ) ;
 int stub1 (struct igc_hw*) ;
 int stub2 (struct igc_hw*) ;
 scalar_t__ stub3 (struct igc_hw*) ;
 scalar_t__ stub4 (struct igc_hw*) ;
 int timer_setup (int *,int ,int ) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static int igc_probe(struct pci_dev *pdev,
       const struct pci_device_id *ent)
{
 struct igc_adapter *adapter;
 struct net_device *netdev;
 struct igc_hw *hw;
 const struct igc_info *ei = igc_info_tbl[ent->driver_data];
 int err;

 err = pci_enable_device_mem(pdev);
 if (err)
  return err;

 err = dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
 if (!err) {
  err = dma_set_coherent_mask(&pdev->dev,
         DMA_BIT_MASK(64));
 } else {
  err = dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
  if (err) {
   err = dma_set_coherent_mask(&pdev->dev,
          DMA_BIT_MASK(32));
   if (err) {
    dev_err(&pdev->dev, "igc: Wrong DMA config\n");
    goto err_dma;
   }
  }
 }

 err = pci_request_selected_regions(pdev,
        pci_select_bars(pdev,
          IORESOURCE_MEM),
        igc_driver_name);
 if (err)
  goto err_pci_reg;

 pci_enable_pcie_error_reporting(pdev);

 pci_set_master(pdev);

 err = -ENOMEM;
 netdev = alloc_etherdev_mq(sizeof(struct igc_adapter),
       IGC_MAX_TX_QUEUES);

 if (!netdev)
  goto err_alloc_etherdev;

 SET_NETDEV_DEV(netdev, &pdev->dev);

 pci_set_drvdata(pdev, netdev);
 adapter = netdev_priv(netdev);
 adapter->netdev = netdev;
 adapter->pdev = pdev;
 hw = &adapter->hw;
 hw->back = adapter;
 adapter->port_num = hw->bus.func;
 adapter->msg_enable = netif_msg_init(debug, DEFAULT_MSG_ENABLE);

 err = pci_save_state(pdev);
 if (err)
  goto err_ioremap;

 err = -EIO;
 adapter->io_addr = ioremap(pci_resource_start(pdev, 0),
       pci_resource_len(pdev, 0));
 if (!adapter->io_addr)
  goto err_ioremap;


 hw->hw_addr = adapter->io_addr;

 netdev->netdev_ops = &igc_netdev_ops;
 igc_set_ethtool_ops(netdev);
 netdev->watchdog_timeo = 5 * HZ;

 netdev->mem_start = pci_resource_start(pdev, 0);
 netdev->mem_end = pci_resource_end(pdev, 0);


 hw->vendor_id = pdev->vendor;
 hw->device_id = pdev->device;
 hw->revision_id = pdev->revision;
 hw->subsystem_vendor_id = pdev->subsystem_vendor;
 hw->subsystem_device_id = pdev->subsystem_device;


 memcpy(&hw->mac.ops, ei->mac_ops, sizeof(hw->mac.ops));
 memcpy(&hw->phy.ops, ei->phy_ops, sizeof(hw->phy.ops));


 err = ei->get_invariants(hw);
 if (err)
  goto err_sw_init;


 netdev->features |= NETIF_F_HW_CSUM;


 err = igc_sw_init(adapter);
 if (err)
  goto err_sw_init;


 netdev->hw_features |= NETIF_F_NTUPLE;
 netdev->hw_features |= netdev->features;


 netdev->min_mtu = ETH_MIN_MTU;
 netdev->max_mtu = MAX_STD_JUMBO_FRAME_SIZE;




 hw->mac.ops.reset_hw(hw);

 if (igc_get_flash_presence_i225(hw)) {
  if (hw->nvm.ops.validate(hw) < 0) {
   dev_err(&pdev->dev,
    "The NVM Checksum Is Not Valid\n");
   err = -EIO;
   goto err_eeprom;
  }
 }

 if (eth_platform_get_mac_address(&pdev->dev, hw->mac.addr)) {

  if (hw->mac.ops.read_mac_addr(hw))
   dev_err(&pdev->dev, "NVM Read Error\n");
 }

 memcpy(netdev->dev_addr, hw->mac.addr, netdev->addr_len);

 if (!is_valid_ether_addr(netdev->dev_addr)) {
  dev_err(&pdev->dev, "Invalid MAC Address\n");
  err = -EIO;
  goto err_eeprom;
 }


 wr32(IGC_RXPBS, I225_RXPBSIZE_DEFAULT);
 wr32(IGC_TXPBS, I225_TXPBSIZE_DEFAULT);

 timer_setup(&adapter->watchdog_timer, igc_watchdog, 0);
 timer_setup(&adapter->phy_info_timer, igc_update_phy_info, 0);

 INIT_WORK(&adapter->reset_task, igc_reset_task);
 INIT_WORK(&adapter->watchdog_task, igc_watchdog_task);


 adapter->fc_autoneg = 1;
 hw->mac.autoneg = 1;
 hw->phy.autoneg_advertised = 0xaf;

 hw->fc.requested_mode = igc_fc_default;
 hw->fc.current_mode = igc_fc_default;


 igc_reset(adapter);




 igc_get_hw_control(adapter);

 strncpy(netdev->name, "eth%d", IFNAMSIZ);
 err = register_netdev(netdev);
 if (err)
  goto err_register;


 netif_carrier_off(netdev);


 adapter->ei = *ei;


 pcie_print_link_status(pdev);
 netdev_info(netdev, "MAC: %pM\n", netdev->dev_addr);

 return 0;

err_register:
 igc_release_hw_control(adapter);
err_eeprom:
 if (!igc_check_reset_block(hw))
  igc_reset_phy(hw);
err_sw_init:
 igc_clear_interrupt_scheme(adapter);
 iounmap(adapter->io_addr);
err_ioremap:
 free_netdev(netdev);
err_alloc_etherdev:
 pci_release_selected_regions(pdev,
         pci_select_bars(pdev, IORESOURCE_MEM));
err_pci_reg:
err_dma:
 pci_disable_device(pdev);
 return err;
}
