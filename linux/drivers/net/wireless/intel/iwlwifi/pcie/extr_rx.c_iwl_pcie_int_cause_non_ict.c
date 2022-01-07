
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans {int dev; } ;
struct TYPE_2__ {int irq_lock; } ;


 int CSR_INT ;
 TYPE_1__* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int lockdep_assert_held (int *) ;
 int trace_iwlwifi_dev_irq (int ) ;

__attribute__((used)) static u32 iwl_pcie_int_cause_non_ict(struct iwl_trans *trans)
{
 u32 inta;

 lockdep_assert_held(&IWL_TRANS_GET_PCIE_TRANS(trans)->irq_lock);

 trace_iwlwifi_dev_irq(trans->dev);


 inta = iwl_read32(trans, CSR_INT);


 return inta;
}
