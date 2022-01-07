
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {int auto_recover; struct bfa_ioc* ioc; } ;
struct bfa_ioc {int dummy; } ;
typedef enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;


 int BFI_IOC_FAIL ;




 int bfa_fsm_set_state (struct bfa_iocpf*,int ) ;
 int bfa_ioc_hw_sem_get_cancel (struct bfa_ioc*) ;
 int bfa_ioc_notify_fail (struct bfa_ioc*) ;
 int bfa_ioc_pf_hwfailed (struct bfa_ioc*) ;
 int bfa_ioc_set_cur_ioc_fwstate (struct bfa_ioc*,int ) ;
 int bfa_ioc_sync_ack (struct bfa_ioc*) ;
 int bfa_ioc_sync_complete (struct bfa_ioc*) ;
 int bfa_ioc_sync_leave (struct bfa_ioc*) ;
 int bfa_iocpf_sm_disabling_sync ;
 int bfa_iocpf_sm_fail ;
 int bfa_iocpf_sm_hwinit ;
 int bfa_iocpf_sm_semwait ;
 int bfa_nw_ioc_hw_sem_release (struct bfa_ioc*) ;
 int bfa_sm_fault (int) ;

__attribute__((used)) static void
bfa_iocpf_sm_fail_sync(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
 struct bfa_ioc *ioc = iocpf->ioc;

 switch (event) {
 case 129:
  bfa_ioc_sync_ack(ioc);
  bfa_ioc_notify_fail(ioc);
  if (!iocpf->auto_recover) {
   bfa_ioc_sync_leave(ioc);
   bfa_ioc_set_cur_ioc_fwstate(ioc, BFI_IOC_FAIL);
   bfa_nw_ioc_hw_sem_release(ioc);
   bfa_fsm_set_state(iocpf, bfa_iocpf_sm_fail);
  } else {
   if (bfa_ioc_sync_complete(ioc))
    bfa_fsm_set_state(iocpf, bfa_iocpf_sm_hwinit);
   else {
    bfa_nw_ioc_hw_sem_release(ioc);
    bfa_fsm_set_state(iocpf, bfa_iocpf_sm_semwait);
   }
  }
  break;

 case 128:
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_fail);
  bfa_ioc_pf_hwfailed(ioc);
  break;

 case 131:
  bfa_ioc_hw_sem_get_cancel(ioc);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_disabling_sync);
  break;

 case 130:
  break;

 default:
  bfa_sm_fault(event);
 }
}
