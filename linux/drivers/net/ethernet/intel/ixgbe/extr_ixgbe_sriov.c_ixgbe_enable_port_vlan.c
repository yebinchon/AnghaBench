
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_3__* pdev; int state; TYPE_2__* vfinfo; struct ixgbe_hw hw; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int pf_qos; int pf_vlan; } ;


 int IXGBE_QDE_ENABLE ;
 int IXGBE_QDE_HIDE_VLAN ;
 int __IXGBE_DOWN ;
 int dev_info (int *,char*,int ,int ,int) ;
 int dev_warn (int *,char*) ;
 scalar_t__ ixgbe_mac_X550 ;
 int ixgbe_set_vf_vlan (struct ixgbe_adapter*,int,int ,int) ;
 int ixgbe_set_vmolr (struct ixgbe_hw*,int,int) ;
 int ixgbe_set_vmvir (struct ixgbe_adapter*,int ,int ,int) ;
 int ixgbe_write_qde (struct ixgbe_adapter*,int,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ixgbe_enable_port_vlan(struct ixgbe_adapter *adapter, int vf,
      u16 vlan, u8 qos)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int err;

 err = ixgbe_set_vf_vlan(adapter, 1, vlan, vf);
 if (err)
  goto out;


 ixgbe_set_vf_vlan(adapter, 0, 0, vf);

 ixgbe_set_vmvir(adapter, vlan, qos, vf);
 ixgbe_set_vmolr(hw, vf, 0);


 if (hw->mac.type >= ixgbe_mac_X550)
  ixgbe_write_qde(adapter, vf, IXGBE_QDE_ENABLE |
    IXGBE_QDE_HIDE_VLAN);

 adapter->vfinfo[vf].pf_vlan = vlan;
 adapter->vfinfo[vf].pf_qos = qos;
 dev_info(&adapter->pdev->dev,
   "Setting VLAN %d, QOS 0x%x on VF %d\n", vlan, qos, vf);
 if (test_bit(__IXGBE_DOWN, &adapter->state)) {
  dev_warn(&adapter->pdev->dev,
    "The VF VLAN has been set, but the PF device is not up.\n");
  dev_warn(&adapter->pdev->dev,
    "Bring the PF device up before attempting to use the VF device.\n");
 }

out:
 return err;
}
