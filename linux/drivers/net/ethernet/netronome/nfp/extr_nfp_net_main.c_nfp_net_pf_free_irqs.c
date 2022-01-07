
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int irq_entries; int pdev; } ;


 int kfree (int ) ;
 int nfp_net_irqs_disable (int ) ;

__attribute__((used)) static void nfp_net_pf_free_irqs(struct nfp_pf *pf)
{
 nfp_net_irqs_disable(pf->pdev);
 kfree(pf->irq_entries);
}
