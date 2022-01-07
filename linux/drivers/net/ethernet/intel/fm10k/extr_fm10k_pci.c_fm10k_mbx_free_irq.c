
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msix_entry {int vector; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {int (* disconnect ) (struct fm10k_hw*,TYPE_3__*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; TYPE_3__ mbx; } ;
struct fm10k_intfc {struct msix_entry* msix_entries; struct fm10k_hw hw; } ;


 int FM10K_EIMR ;
 int FM10K_EIMR_DISABLE (int ) ;
 int FM10K_ITR (size_t) ;
 int FM10K_ITR_MASK_SET ;
 size_t FM10K_MBX_VECTOR ;
 int FM10K_VFITR (size_t) ;
 int FUM_FAULT ;
 int MAILBOX ;
 int MAXHOLDTIME ;
 int PCA_FAULT ;
 int SRAMERROR ;
 int SWITCHNOTREADY ;
 int SWITCHREADY ;
 int VFLR ;
 scalar_t__ fm10k_mac_pf ;
 int fm10k_write_reg (struct fm10k_hw*,int,int) ;
 int free_irq (int ,struct fm10k_intfc*) ;
 int stub1 (struct fm10k_hw*,TYPE_3__*) ;

void fm10k_mbx_free_irq(struct fm10k_intfc *interface)
{
 struct fm10k_hw *hw = &interface->hw;
 struct msix_entry *entry;
 int itr_reg;


 if (!interface->msix_entries)
  return;

 entry = &interface->msix_entries[FM10K_MBX_VECTOR];


 hw->mbx.ops.disconnect(hw, &hw->mbx);


 if (hw->mac.type == fm10k_mac_pf) {
  fm10k_write_reg(hw, FM10K_EIMR,
    FM10K_EIMR_DISABLE(PCA_FAULT) |
    FM10K_EIMR_DISABLE(FUM_FAULT) |
    FM10K_EIMR_DISABLE(MAILBOX) |
    FM10K_EIMR_DISABLE(SWITCHREADY) |
    FM10K_EIMR_DISABLE(SWITCHNOTREADY) |
    FM10K_EIMR_DISABLE(SRAMERROR) |
    FM10K_EIMR_DISABLE(VFLR) |
    FM10K_EIMR_DISABLE(MAXHOLDTIME));
  itr_reg = FM10K_ITR(FM10K_MBX_VECTOR);
 } else {
  itr_reg = FM10K_VFITR(FM10K_MBX_VECTOR);
 }

 fm10k_write_reg(hw, itr_reg, FM10K_ITR_MASK_SET);

 free_irq(entry->vector, interface);
}
