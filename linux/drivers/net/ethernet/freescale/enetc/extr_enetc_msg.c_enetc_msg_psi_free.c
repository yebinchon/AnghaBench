
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_si {int pdev; int hw; } ;
struct enetc_pf {int num_vfs; int msg_task; struct enetc_si* si; } ;


 int ENETC_SI_INT_IDX ;
 int cancel_work_sync (int *) ;
 int enetc_msg_disable_mr_int (int *) ;
 int enetc_msg_free_mbx (struct enetc_si*,int) ;
 int free_irq (int ,struct enetc_si*) ;
 int pci_irq_vector (int ,int ) ;

void enetc_msg_psi_free(struct enetc_pf *pf)
{
 struct enetc_si *si = pf->si;
 int i;

 cancel_work_sync(&pf->msg_task);


 enetc_msg_disable_mr_int(&si->hw);

 for (i = 0; i < pf->num_vfs; i++)
  enetc_msg_free_mbx(si, i);


 free_irq(pci_irq_vector(si->pdev, ENETC_SI_INT_IDX), si);
}
