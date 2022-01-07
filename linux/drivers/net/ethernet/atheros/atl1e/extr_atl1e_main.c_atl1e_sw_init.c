
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int revision; int subsystem_device; int subsystem_vendor; int device; int vendor; } ;
struct atl1e_hw {int revision_id; int emi_ca; int phy_configured; int preamble_len; int max_frame_size; int rx_jumbo_th; int ict; int smb_timer; int tpd_burst; int rrd_thresh; int tpd_thresh; int rx_count_down; int tx_count_down; int imt; int dmar_dly_cnt; int dmaw_dly_cnt; void* dmaw_block; void* dmar_block; scalar_t__ base_cpu; scalar_t__ indirect_tab; int rrs_type; int nic_type; int pci_cmd_word; int subsystem_id; int subsystem_vendor_id; int device_id; int vendor_id; } ;
struct TYPE_3__ {int count; } ;
struct atl1e_adapter {int num_rx_queues; int flags; int mdio_lock; int irq_sem; TYPE_2__* netdev; TYPE_1__ tx_ring; int link_duplex; int link_speed; scalar_t__ wol; struct pci_dev* pdev; struct atl1e_hw hw; } ;
struct TYPE_4__ {int mtu; } ;


 int AT_READ_REG (struct atl1e_hw*,int ) ;
 int ENOMEM ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int FULL_DUPLEX ;
 int PCI_COMMAND ;
 int PHY_STATUS_100M ;
 int PHY_STATUS_EMI_CA ;
 int REG_PHY_STATUS ;
 int SPEED_0 ;
 int VLAN_HLEN ;
 int __AT_DOWN ;
 int athr_l1e ;
 int athr_l2e_revA ;
 int athr_l2e_revB ;
 scalar_t__ atl1e_alloc_queues (struct atl1e_adapter*) ;
 void* atl1e_dma_req_1024 ;
 int atl1e_rrs_disable ;
 int atomic_set (int *,int) ;
 int netdev_err (TYPE_2__*,char*) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int atl1e_sw_init(struct atl1e_adapter *adapter)
{
 struct atl1e_hw *hw = &adapter->hw;
 struct pci_dev *pdev = adapter->pdev;
 u32 phy_status_data = 0;

 adapter->wol = 0;
 adapter->link_speed = SPEED_0;
 adapter->link_duplex = FULL_DUPLEX;
 adapter->num_rx_queues = 1;


 hw->vendor_id = pdev->vendor;
 hw->device_id = pdev->device;
 hw->subsystem_vendor_id = pdev->subsystem_vendor;
 hw->subsystem_id = pdev->subsystem_device;
 hw->revision_id = pdev->revision;

 pci_read_config_word(pdev, PCI_COMMAND, &hw->pci_cmd_word);

 phy_status_data = AT_READ_REG(hw, REG_PHY_STATUS);

 if (hw->revision_id >= 0xF0) {
  hw->nic_type = athr_l2e_revB;
 } else {
  if (phy_status_data & PHY_STATUS_100M)
   hw->nic_type = athr_l1e;
  else
   hw->nic_type = athr_l2e_revA;
 }

 phy_status_data = AT_READ_REG(hw, REG_PHY_STATUS);

 if (phy_status_data & PHY_STATUS_EMI_CA)
  hw->emi_ca = 1;
 else
  hw->emi_ca = 0;

 hw->phy_configured = 0;
 hw->preamble_len = 7;
 hw->max_frame_size = adapter->netdev->mtu;
 hw->rx_jumbo_th = (hw->max_frame_size + ETH_HLEN +
    VLAN_HLEN + ETH_FCS_LEN + 7) >> 3;

 hw->rrs_type = atl1e_rrs_disable;
 hw->indirect_tab = 0;
 hw->base_cpu = 0;



 hw->ict = 50000;
 hw->smb_timer = 200000;
 hw->tpd_burst = 5;
 hw->rrd_thresh = 1;
 hw->tpd_thresh = adapter->tx_ring.count / 2;
 hw->rx_count_down = 4;
 hw->tx_count_down = hw->imt * 4 / 3;
 hw->dmar_block = atl1e_dma_req_1024;
 hw->dmaw_block = atl1e_dma_req_1024;
 hw->dmar_dly_cnt = 15;
 hw->dmaw_dly_cnt = 4;

 if (atl1e_alloc_queues(adapter)) {
  netdev_err(adapter->netdev, "Unable to allocate memory for queues\n");
  return -ENOMEM;
 }

 atomic_set(&adapter->irq_sem, 1);
 spin_lock_init(&adapter->mdio_lock);

 set_bit(__AT_DOWN, &adapter->flags);

 return 0;
}
