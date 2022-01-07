
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_si {int hw; } ;
struct enetc_pf {int msg_task; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int enetc_msg_disable_mr_int (int *) ;
 struct enetc_pf* enetc_si_priv (struct enetc_si*) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t enetc_msg_psi_msix(int irq, void *data)
{
 struct enetc_si *si = (struct enetc_si *)data;
 struct enetc_pf *pf = enetc_si_priv(si);

 enetc_msg_disable_mr_int(&si->hw);
 schedule_work(&pf->msg_task);

 return IRQ_HANDLED;
}
