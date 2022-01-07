
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i40e_hw {int dummy; } ;
struct i40e_pf {int int_name; TYPE_2__* pdev; int state; TYPE_1__* msix_entries; struct i40e_hw hw; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int vector; } ;


 int EFAULT ;
 int I40E_ITR_8K ;
 int I40E_PFINT_ITR0 (int ) ;
 int I40E_PFINT_LNKLST0 ;
 int I40E_QUEUE_END_OF_LIST ;
 int I40E_RX_ITR ;
 int __I40E_MISC_IRQ_REQUESTED ;
 int clear_bit (int ,int ) ;
 int dev_info (int *,char*,int ,int) ;
 int i40e_enable_misc_int_causes (struct i40e_pf*) ;
 int i40e_flush (struct i40e_hw*) ;
 int i40e_intr ;
 int i40e_irq_dynamic_enable_icr0 (struct i40e_pf*) ;
 int request_irq (int ,int ,int ,int ,struct i40e_pf*) ;
 int test_and_set_bit (int ,int ) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static int i40e_setup_misc_vector(struct i40e_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 int err = 0;


 if (!test_and_set_bit(__I40E_MISC_IRQ_REQUESTED, pf->state)) {
  err = request_irq(pf->msix_entries[0].vector,
      i40e_intr, 0, pf->int_name, pf);
  if (err) {
   clear_bit(__I40E_MISC_IRQ_REQUESTED, pf->state);
   dev_info(&pf->pdev->dev,
     "request_irq for %s failed: %d\n",
     pf->int_name, err);
   return -EFAULT;
  }
 }

 i40e_enable_misc_int_causes(pf);


 wr32(hw, I40E_PFINT_LNKLST0, I40E_QUEUE_END_OF_LIST);
 wr32(hw, I40E_PFINT_ITR0(I40E_RX_ITR), I40E_ITR_8K);

 i40e_flush(hw);

 i40e_irq_dynamic_enable_icr0(pf);

 return err;
}
