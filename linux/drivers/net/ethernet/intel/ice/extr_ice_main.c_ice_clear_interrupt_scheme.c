
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_pf {int * irq_tracker; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int devm_kfree (int *,int *) ;
 int ice_dis_msix (struct ice_pf*) ;

__attribute__((used)) static void ice_clear_interrupt_scheme(struct ice_pf *pf)
{
 ice_dis_msix(pf);

 if (pf->irq_tracker) {
  devm_kfree(&pf->pdev->dev, pf->irq_tracker);
  pf->irq_tracker = ((void*)0);
 }
}
