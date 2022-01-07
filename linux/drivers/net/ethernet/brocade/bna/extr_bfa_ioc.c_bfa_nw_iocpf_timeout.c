
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fsm; } ;
struct bfa_ioc {TYPE_1__ iocpf; } ;
typedef enum bfa_iocpf_state { ____Placeholder_bfa_iocpf_state } bfa_iocpf_state ;


 int BFA_IOCPF_HWINIT ;
 int IOCPF_E_TIMEOUT ;
 int bfa_fsm_send_event (TYPE_1__*,int ) ;
 int bfa_ioc_poll_fwinit (struct bfa_ioc*) ;
 int bfa_sm_to_state (int ,int ) ;
 int iocpf_sm_table ;

void
bfa_nw_iocpf_timeout(struct bfa_ioc *ioc)
{
 enum bfa_iocpf_state iocpf_st;

 iocpf_st = bfa_sm_to_state(iocpf_sm_table, ioc->iocpf.fsm);

 if (iocpf_st == BFA_IOCPF_HWINIT)
  bfa_ioc_poll_fwinit(ioc);
 else
  bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_TIMEOUT);
}
