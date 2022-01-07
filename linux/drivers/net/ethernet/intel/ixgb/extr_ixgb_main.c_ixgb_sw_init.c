
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ device; int subsystem_device; int subsystem_vendor; int vendor; } ;
struct net_device {scalar_t__ mtu; } ;
struct TYPE_2__ {int send_xon; } ;
struct ixgb_hw {scalar_t__ device_id; TYPE_1__ fc; int mac_type; scalar_t__ max_frame_size; int subsystem_id; int subsystem_vendor_id; int vendor_id; } ;
struct ixgb_adapter {int flags; struct net_device* netdev; scalar_t__ rx_buffer_len; struct pci_dev* pdev; struct ixgb_hw hw; } ;


 scalar_t__ ENET_FCS_LENGTH ;
 scalar_t__ ENET_HEADER_SIZE ;
 scalar_t__ IXGB_DEVICE_ID_82597EX ;
 scalar_t__ IXGB_DEVICE_ID_82597EX_CX4 ;
 scalar_t__ IXGB_DEVICE_ID_82597EX_LR ;
 scalar_t__ IXGB_DEVICE_ID_82597EX_SR ;
 int __IXGB_DOWN ;
 int ixgb_82597 ;
 int netif_err (struct ixgb_adapter*,int ,struct net_device*,char*) ;
 int probe ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
ixgb_sw_init(struct ixgb_adapter *adapter)
{
 struct ixgb_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;



 hw->vendor_id = pdev->vendor;
 hw->device_id = pdev->device;
 hw->subsystem_vendor_id = pdev->subsystem_vendor;
 hw->subsystem_id = pdev->subsystem_device;

 hw->max_frame_size = netdev->mtu + ENET_HEADER_SIZE + ENET_FCS_LENGTH;
 adapter->rx_buffer_len = hw->max_frame_size + 8;

 if ((hw->device_id == IXGB_DEVICE_ID_82597EX) ||
     (hw->device_id == IXGB_DEVICE_ID_82597EX_CX4) ||
     (hw->device_id == IXGB_DEVICE_ID_82597EX_LR) ||
     (hw->device_id == IXGB_DEVICE_ID_82597EX_SR))
  hw->mac_type = ixgb_82597;
 else {

  netif_err(adapter, probe, adapter->netdev, "unsupported device id\n");
 }


 hw->fc.send_xon = 1;

 set_bit(__IXGB_DOWN, &adapter->flags);
 return 0;
}
