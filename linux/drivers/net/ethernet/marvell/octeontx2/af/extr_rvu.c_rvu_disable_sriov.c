
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int pdev; int afvf_wq_info; } ;


 int pci_disable_sriov (int ) ;
 int rvu_disable_afvf_intr (struct rvu*) ;
 int rvu_mbox_destroy (int *) ;

__attribute__((used)) static void rvu_disable_sriov(struct rvu *rvu)
{
 rvu_disable_afvf_intr(rvu);
 rvu_mbox_destroy(&rvu->afvf_wq_info);
 pci_disable_sriov(rvu->pdev);
}
