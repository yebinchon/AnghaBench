
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40e_pf {int flags; TYPE_1__* pdev; int int_name; } ;
struct TYPE_2__ {int dev; int irq; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_FLAG_MSI_ENABLED ;
 int IRQF_SHARED ;
 int dev_info (int *,char*,int) ;
 int i40e_enable_misc_int_causes (struct i40e_pf*) ;
 int i40e_intr ;
 int i40e_irq_dynamic_enable_icr0 (struct i40e_pf*) ;
 int i40e_setup_misc_vector (struct i40e_pf*) ;
 int request_irq (int ,int ,int ,int ,struct i40e_pf*) ;

__attribute__((used)) static int i40e_setup_misc_vector_for_recovery_mode(struct i40e_pf *pf)
{
 int err;

 if (pf->flags & I40E_FLAG_MSIX_ENABLED) {
  err = i40e_setup_misc_vector(pf);

  if (err) {
   dev_info(&pf->pdev->dev,
     "MSI-X misc vector request failed, error %d\n",
     err);
   return err;
  }
 } else {
  u32 flags = pf->flags & I40E_FLAG_MSI_ENABLED ? 0 : IRQF_SHARED;

  err = request_irq(pf->pdev->irq, i40e_intr, flags,
      pf->int_name, pf);

  if (err) {
   dev_info(&pf->pdev->dev,
     "MSI/legacy misc vector request failed, error %d\n",
     err);
   return err;
  }
  i40e_enable_misc_int_causes(pf);
  i40e_irq_dynamic_enable_icr0(pf);
 }

 return 0;
}
