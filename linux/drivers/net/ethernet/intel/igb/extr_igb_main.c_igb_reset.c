
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union e1000_adv_tx_desc {int dummy; } e1000_adv_tx_desc ;
typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_7__ {int (* get_invariants ) (struct e1000_hw*) ;} ;
struct TYPE_10__ {scalar_t__ media_type; } ;
struct TYPE_8__ {scalar_t__ func; } ;
struct TYPE_9__ {int (* init_thermal_sensor_thresh ) (struct e1000_hw*) ;scalar_t__ (* init_hw ) (struct e1000_hw*) ;int (* reset_hw ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int type; TYPE_4__ ops; int autoneg; } ;
struct e1000_fc_info {int high_water; int low_water; int pause_time; int send_xon; int requested_mode; int current_mode; } ;
struct e1000_hw {TYPE_5__ phy; TYPE_3__ bus; struct e1000_mac_info mac; struct e1000_fc_info fc; } ;
struct igb_adapter {int max_frame_size; int vfs_allocated_count; int flags; int ptp_flags; int netdev; scalar_t__ ets; int state; TYPE_2__ ei; TYPE_1__* vf_data; struct e1000_hw hw; struct pci_dev* pdev; } ;
struct TYPE_6__ {int flags; } ;


 int DIV_ROUND_UP (int,int) ;
 int E1000_PBA ;
 int E1000_PBA_34K ;
 int E1000_RXPBS ;
 int E1000_RXPBS_SIZE_MASK_82576 ;
 int E1000_VET ;
 int E1000_VFRE ;
 int E1000_VFTE ;
 int E1000_WUC ;
 int ETHERNET_IEEE_VLAN_TYPE ;
 int ETH_FCS_LEN ;
 int IGB_FLAG_MAS_ENABLE ;
 int IGB_FLAG_MEDIA_RESET ;
 int IGB_PTP_ENABLED ;
 int IGB_VF_FLAG_PF_SET_MAC ;
 int MAX_JUMBO_FRAME_SIZE ;
 int __IGB_DOWN ;
 int __dev_uc_unsync (int ,int *) ;
 int dev_err (int *,char*) ;







 scalar_t__ e1000_media_type_copper ;
 int igb_enable_mas (struct igb_adapter*) ;
 int igb_flush_mac_table (struct igb_adapter*) ;
 int igb_force_mac_fc (struct e1000_hw*) ;
 int igb_get_phy_info (struct e1000_hw*) ;
 int igb_init_dmac (struct igb_adapter*,int) ;
 int igb_ping_all_vfs (struct igb_adapter*) ;
 int igb_power_down_link (struct igb_adapter*) ;
 int igb_ptp_reset (struct igb_adapter*) ;
 int igb_rxpbs_adjust_82580 (int) ;
 int igb_set_default_mac_filter (struct igb_adapter*) ;
 int igb_set_eee_i350 (struct e1000_hw*,int,int) ;
 int igb_set_eee_i354 (struct e1000_hw*,int,int) ;
 int igb_update_mng_vlan (struct igb_adapter*) ;
 int netif_running (int ) ;
 int rd32 (int ) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 scalar_t__ stub3 (struct e1000_hw*) ;
 int stub4 (struct e1000_hw*) ;
 int test_bit (int ,int *) ;
 int wr32 (int ,int) ;

void igb_reset(struct igb_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 struct e1000_hw *hw = &adapter->hw;
 struct e1000_mac_info *mac = &hw->mac;
 struct e1000_fc_info *fc = &hw->fc;
 u32 pba, hwm;




 switch (mac->type) {
 case 129:
 case 128:
 case 132:
  pba = rd32(E1000_RXPBS);
  pba = igb_rxpbs_adjust_82580(pba);
  break;
 case 133:
  pba = rd32(E1000_RXPBS);
  pba &= E1000_RXPBS_SIZE_MASK_82576;
  break;
 case 134:
 case 131:
 case 130:
 default:
  pba = E1000_PBA_34K;
  break;
 }

 if (mac->type == 134) {
  u32 min_rx_space, min_tx_space, needed_tx_space;


  wr32(E1000_PBA, pba);
  min_rx_space = DIV_ROUND_UP(MAX_JUMBO_FRAME_SIZE, 1024);






  min_tx_space = adapter->max_frame_size;
  min_tx_space += sizeof(union e1000_adv_tx_desc) - ETH_FCS_LEN;
  min_tx_space = DIV_ROUND_UP(min_tx_space, 512);


  needed_tx_space = min_tx_space - (rd32(E1000_PBA) >> 16);





  if (needed_tx_space < pba) {
   pba -= needed_tx_space;




   if (pba < min_rx_space)
    pba = min_rx_space;
  }


  wr32(E1000_PBA, pba);
 }
 hwm = (pba << 10) - (adapter->max_frame_size + MAX_JUMBO_FRAME_SIZE);

 fc->high_water = hwm & 0xFFFFFFF0;
 fc->low_water = fc->high_water - 16;
 fc->pause_time = 0xFFFF;
 fc->send_xon = 1;
 fc->current_mode = fc->requested_mode;


 if (adapter->vfs_allocated_count) {
  int i;

  for (i = 0 ; i < adapter->vfs_allocated_count; i++)
   adapter->vf_data[i].flags &= IGB_VF_FLAG_PF_SET_MAC;


  igb_ping_all_vfs(adapter);


  wr32(E1000_VFRE, 0);
  wr32(E1000_VFTE, 0);
 }


 hw->mac.ops.reset_hw(hw);
 wr32(E1000_WUC, 0);

 if (adapter->flags & IGB_FLAG_MEDIA_RESET) {

  adapter->ei.get_invariants(hw);
  adapter->flags &= ~IGB_FLAG_MEDIA_RESET;
 }
 if ((mac->type == 134 || mac->type == 129) &&
     (adapter->flags & IGB_FLAG_MAS_ENABLE)) {
  igb_enable_mas(adapter);
 }
 if (hw->mac.ops.init_hw(hw))
  dev_err(&pdev->dev, "Hardware Error\n");


 igb_flush_mac_table(adapter);
 __dev_uc_unsync(adapter->netdev, ((void*)0));


 igb_set_default_mac_filter(adapter);




 if (!hw->mac.autoneg)
  igb_force_mac_fc(hw);

 igb_init_dmac(adapter, pba);
 if (hw->phy.media_type == e1000_media_type_copper) {
  switch (mac->type) {
  case 129:
  case 131:
  case 130:
   igb_set_eee_i350(hw, 1, 1);
   break;
  case 128:
   igb_set_eee_i354(hw, 1, 1);
   break;
  default:
   break;
  }
 }
 if (!netif_running(adapter->netdev))
  igb_power_down_link(adapter);

 igb_update_mng_vlan(adapter);


 wr32(E1000_VET, ETHERNET_IEEE_VLAN_TYPE);


 if (adapter->ptp_flags & IGB_PTP_ENABLED)
  igb_ptp_reset(adapter);

 igb_get_phy_info(hw);
}
