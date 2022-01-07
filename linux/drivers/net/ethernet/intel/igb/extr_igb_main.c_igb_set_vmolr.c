
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int rss_queues; int vfs_allocated_count; struct e1000_hw hw; } ;


 int E1000_VMOLR (int) ;
 int E1000_VMOLR_AUPE ;
 int E1000_VMOLR_BAM ;
 int E1000_VMOLR_RSSE ;
 scalar_t__ e1000_82576 ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static inline void igb_set_vmolr(struct igb_adapter *adapter,
     int vfn, bool aupe)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 vmolr;




 if (hw->mac.type < e1000_82576)
  return;

 vmolr = rd32(E1000_VMOLR(vfn));
 if (aupe)
  vmolr |= E1000_VMOLR_AUPE;
 else
  vmolr &= ~(E1000_VMOLR_AUPE);


 vmolr &= ~(E1000_VMOLR_BAM | E1000_VMOLR_RSSE);

 if (adapter->rss_queues > 1 && vfn == adapter->vfs_allocated_count)
  vmolr |= E1000_VMOLR_RSSE;



 if (vfn <= adapter->vfs_allocated_count)
  vmolr |= E1000_VMOLR_BAM;

 wr32(E1000_VMOLR(vfn), vmolr);
}
