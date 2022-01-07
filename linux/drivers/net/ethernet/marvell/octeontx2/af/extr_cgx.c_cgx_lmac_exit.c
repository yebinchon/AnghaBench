
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmac {struct lmac* name; } ;
struct cgx {int lmac_count; int pdev; struct lmac** lmac_idmap; int * cgx_cmd_workq; } ;


 scalar_t__ CGX_LMAC_FWI ;
 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int free_irq (int ,struct lmac*) ;
 int kfree (struct lmac*) ;
 int pci_irq_vector (int ,scalar_t__) ;

__attribute__((used)) static int cgx_lmac_exit(struct cgx *cgx)
{
 struct lmac *lmac;
 int i;

 if (cgx->cgx_cmd_workq) {
  flush_workqueue(cgx->cgx_cmd_workq);
  destroy_workqueue(cgx->cgx_cmd_workq);
  cgx->cgx_cmd_workq = ((void*)0);
 }


 for (i = 0; i < cgx->lmac_count; i++) {
  lmac = cgx->lmac_idmap[i];
  if (!lmac)
   continue;
  free_irq(pci_irq_vector(cgx->pdev, CGX_LMAC_FWI + i * 9), lmac);
  kfree(lmac->name);
  kfree(lmac);
 }

 return 0;
}
