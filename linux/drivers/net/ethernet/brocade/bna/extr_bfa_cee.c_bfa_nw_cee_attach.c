
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int dummy; } ;
struct bfa_cee {int ioc_notify; struct bfa_ioc* ioc; void* dev; } ;


 int BFI_MC_CEE ;
 int BUG_ON (int) ;
 int bfa_cee_isr ;
 int bfa_cee_notify ;
 int bfa_ioc_notify_init (int *,int ,struct bfa_cee*) ;
 int bfa_nw_ioc_mbox_regisr (struct bfa_ioc*,int ,int ,struct bfa_cee*) ;
 int bfa_nw_ioc_notify_register (struct bfa_ioc*,int *) ;

void
bfa_nw_cee_attach(struct bfa_cee *cee, struct bfa_ioc *ioc,
  void *dev)
{
 BUG_ON(!(cee != ((void*)0)));
 cee->dev = dev;
 cee->ioc = ioc;

 bfa_nw_ioc_mbox_regisr(cee->ioc, BFI_MC_CEE, bfa_cee_isr, cee);
 bfa_ioc_notify_init(&cee->ioc_notify, bfa_cee_notify, cee);
 bfa_nw_ioc_notify_register(cee->ioc, &cee->ioc_notify);
}
