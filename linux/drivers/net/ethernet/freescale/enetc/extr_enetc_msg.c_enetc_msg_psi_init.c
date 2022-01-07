
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct enetc_si {int hw; TYPE_2__* pdev; TYPE_1__* ndev; } ;
struct enetc_pf {int num_vfs; int msg_task; int msg_int_name; struct enetc_si* si; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {char* name; } ;


 int ENETC_SIMSIVR ;
 int ENETC_SI_INT_IDX ;
 int INIT_WORK (int *,int ) ;
 int dev_err (int *,char*) ;
 int enetc_msg_alloc_mbx (struct enetc_si*,int) ;
 int enetc_msg_enable_mr_int (int *) ;
 int enetc_msg_free_mbx (struct enetc_si*,int) ;
 int enetc_msg_psi_msix ;
 int enetc_msg_task ;
 int enetc_wr (int *,int ,int ) ;
 int free_irq (int,struct enetc_si*) ;
 int pci_irq_vector (TYPE_2__*,int ) ;
 int request_irq (int,int ,int ,int ,struct enetc_si*) ;
 int snprintf (int ,int,char*,char*) ;

int enetc_msg_psi_init(struct enetc_pf *pf)
{
 struct enetc_si *si = pf->si;
 int vector, i, err;


 snprintf(pf->msg_int_name, sizeof(pf->msg_int_name), "%s-vfmsg",
   si->ndev->name);
 vector = pci_irq_vector(si->pdev, ENETC_SI_INT_IDX);
 err = request_irq(vector, enetc_msg_psi_msix, 0, pf->msg_int_name, si);
 if (err) {
  dev_err(&si->pdev->dev,
   "PSI messaging: request_irq() failed!\n");
  return err;
 }


 enetc_wr(&si->hw, ENETC_SIMSIVR, ENETC_SI_INT_IDX);


 INIT_WORK(&pf->msg_task, enetc_msg_task);

 for (i = 0; i < pf->num_vfs; i++) {
  err = enetc_msg_alloc_mbx(si, i);
  if (err)
   goto err_init_mbx;
 }


 enetc_msg_enable_mr_int(&si->hw);

 return 0;

err_init_mbx:
 for (i--; i >= 0; i--)
  enetc_msg_free_mbx(si, i);

 free_irq(vector, si);

 return err;
}
