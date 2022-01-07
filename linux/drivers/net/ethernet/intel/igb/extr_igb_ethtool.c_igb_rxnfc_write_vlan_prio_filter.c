
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int vlan_tci; } ;
struct igb_nfc_filter {int action; TYPE_1__ filter; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {TYPE_2__* pdev; struct e1000_hw hw; } ;
struct TYPE_4__ {int dev; } ;


 int E1000_VLAPQF ;
 int E1000_VLAPQF_P_VALID (int) ;
 int E1000_VLAPQF_QUEUE_MASK ;
 int E1000_VLAPQF_QUEUE_SEL (int,int) ;
 int EEXIST ;
 int VLAN_PRIO_MASK ;
 int VLAN_PRIO_SHIFT ;
 int dev_err (int *,char*) ;
 int ntohs (int ) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static int igb_rxnfc_write_vlan_prio_filter(struct igb_adapter *adapter,
         struct igb_nfc_filter *input)
{
 struct e1000_hw *hw = &adapter->hw;
 u8 vlan_priority;
 u16 queue_index;
 u32 vlapqf;

 vlapqf = rd32(E1000_VLAPQF);
 vlan_priority = (ntohs(input->filter.vlan_tci) & VLAN_PRIO_MASK)
    >> VLAN_PRIO_SHIFT;
 queue_index = (vlapqf >> (vlan_priority * 4)) & E1000_VLAPQF_QUEUE_MASK;


 if ((vlapqf & E1000_VLAPQF_P_VALID(vlan_priority)) &&
     (queue_index != input->action)) {
  dev_err(&adapter->pdev->dev, "ethtool rxnfc set vlan prio filter failed.\n");
  return -EEXIST;
 }

 vlapqf |= E1000_VLAPQF_P_VALID(vlan_priority);
 vlapqf |= E1000_VLAPQF_QUEUE_SEL(vlan_priority, input->action);

 wr32(E1000_VLAPQF, vlapqf);

 return 0;
}
