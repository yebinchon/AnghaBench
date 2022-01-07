
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int flags; TYPE_1__* pdev; int int_name; } ;
struct TYPE_2__ {int dev; int irq; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_FLAG_MSI_ENABLED ;
 int IRQF_SHARED ;
 int dev_info (int *,char*,int) ;
 int i40e_intr ;
 int i40e_vsi_request_irq_msix (struct i40e_vsi*,char*) ;
 int request_irq (int ,int ,int ,int ,struct i40e_pf*) ;

__attribute__((used)) static int i40e_vsi_request_irq(struct i40e_vsi *vsi, char *basename)
{
 struct i40e_pf *pf = vsi->back;
 int err;

 if (pf->flags & I40E_FLAG_MSIX_ENABLED)
  err = i40e_vsi_request_irq_msix(vsi, basename);
 else if (pf->flags & I40E_FLAG_MSI_ENABLED)
  err = request_irq(pf->pdev->irq, i40e_intr, 0,
      pf->int_name, pf);
 else
  err = request_irq(pf->pdev->irq, i40e_intr, IRQF_SHARED,
      pf->int_name, pf);

 if (err)
  dev_info(&pf->pdev->dev, "request_irq failed, Error %d\n", err);

 return err;
}
