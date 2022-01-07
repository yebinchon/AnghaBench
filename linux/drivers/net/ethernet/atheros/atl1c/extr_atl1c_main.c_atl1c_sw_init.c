
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; int subsystem_device; int subsystem_vendor; int device; int vendor; } ;
struct atl1c_hw {int revision_id; int hibernate; int phy_configured; int preamble_len; int indirect_tab; int ict; int smb_timer; int rx_imt; int tx_imt; int tpd_burst; int rfd_burst; int dmar_block; int dma_order; scalar_t__ base_cpu; int autoneg_advertised; int max_frame_size; int intr_mask; int media_type; int subsystem_id; int subsystem_vendor_id; int device_id; int vendor_id; } ;
struct TYPE_5__ {int count; } ;
struct atl1c_adapter {int flags; int mdio_lock; int irq_sem; TYPE_3__* netdev; TYPE_2__ rfd_ring; TYPE_1__* tpd_ring; int link_duplex; int link_speed; scalar_t__ wol; struct pci_dev* pdev; struct atl1c_hw hw; } ;
struct TYPE_6__ {int mtu; } ;
struct TYPE_4__ {int count; } ;


 int ADVERTISED_Autoneg ;
 int ENOMEM ;
 int FULL_DUPLEX ;
 int IMR_NORMAL_MASK ;
 int MEDIA_TYPE_AUTO_SENSOR ;
 int PCI_CLASS_REVISION ;
 int SPEED_0 ;
 int __AT_DOWN ;
 scalar_t__ atl1c_alloc_queues (struct atl1c_adapter*) ;
 int atl1c_dma_ord_out ;
 int atl1c_dma_req_1024 ;
 int atl1c_patch_assign (struct atl1c_hw*) ;
 int atl1c_set_rxbufsize (struct atl1c_adapter*,TYPE_3__*) ;
 scalar_t__ atl1c_setup_mac_funcs (struct atl1c_hw*) ;
 int atomic_set (int *,int) ;
 int dev_err (int *,char*) ;
 int device_set_wakeup_enable (int *,int) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int atl1c_sw_init(struct atl1c_adapter *adapter)
{
 struct atl1c_hw *hw = &adapter->hw;
 struct pci_dev *pdev = adapter->pdev;
 u32 revision;


 adapter->wol = 0;
 device_set_wakeup_enable(&pdev->dev, 0);
 adapter->link_speed = SPEED_0;
 adapter->link_duplex = FULL_DUPLEX;
 adapter->tpd_ring[0].count = 1024;
 adapter->rfd_ring.count = 512;

 hw->vendor_id = pdev->vendor;
 hw->device_id = pdev->device;
 hw->subsystem_vendor_id = pdev->subsystem_vendor;
 hw->subsystem_id = pdev->subsystem_device;
 pci_read_config_dword(pdev, PCI_CLASS_REVISION, &revision);
 hw->revision_id = revision & 0xFF;

 hw->hibernate = 1;
 hw->media_type = MEDIA_TYPE_AUTO_SENSOR;
 if (atl1c_setup_mac_funcs(hw) != 0) {
  dev_err(&pdev->dev, "set mac function pointers failed\n");
  return -1;
 }
 atl1c_patch_assign(hw);

 hw->intr_mask = IMR_NORMAL_MASK;
 hw->phy_configured = 0;
 hw->preamble_len = 7;
 hw->max_frame_size = adapter->netdev->mtu;
 hw->autoneg_advertised = ADVERTISED_Autoneg;
 hw->indirect_tab = 0xE4E4E4E4;
 hw->base_cpu = 0;

 hw->ict = 50000;
 hw->smb_timer = 200000;
 hw->rx_imt = 200;
 hw->tx_imt = 1000;

 hw->tpd_burst = 5;
 hw->rfd_burst = 8;
 hw->dma_order = atl1c_dma_ord_out;
 hw->dmar_block = atl1c_dma_req_1024;

 if (atl1c_alloc_queues(adapter)) {
  dev_err(&pdev->dev, "Unable to allocate memory for queues\n");
  return -ENOMEM;
 }

 atl1c_set_rxbufsize(adapter, adapter->netdev);
 atomic_set(&adapter->irq_sem, 1);
 spin_lock_init(&adapter->mdio_lock);
 set_bit(__AT_DOWN, &adapter->flags);

 return 0;
}
