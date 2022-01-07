
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {struct bfa_ioc* ioc; } ;
struct bfa_ioc {int dummy; } ;
typedef enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;


 int BFI_IOC_FAIL ;





 int bfa_fsm_set_state (struct bfa_iocpf*,int ) ;
 int bfa_ioc_firmware_unlock (struct bfa_ioc*) ;
 int bfa_ioc_hw_sem_get_cancel (struct bfa_ioc*) ;
 int bfa_ioc_notify_fail (struct bfa_ioc*) ;
 int bfa_ioc_pf_hwfailed (struct bfa_ioc*) ;
 int bfa_ioc_set_cur_ioc_fwstate (struct bfa_ioc*,int ) ;
 int bfa_ioc_sync_leave (struct bfa_ioc*) ;
 int bfa_iocpf_sm_disabling_sync ;
 int bfa_iocpf_sm_fail ;
 int bfa_iocpf_sm_initfail ;
 int bfa_iocpf_sm_reset ;
 int bfa_nw_ioc_hw_sem_release (struct bfa_ioc*) ;
 int bfa_sm_fault (int) ;

__attribute__((used)) static void
bfa_iocpf_sm_initfail_sync(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
 struct bfa_ioc *ioc = iocpf->ioc;

 switch (event) {
 case 130:
  bfa_ioc_notify_fail(ioc);
  bfa_ioc_sync_leave(ioc);
  bfa_ioc_set_cur_ioc_fwstate(ioc, BFI_IOC_FAIL);
  bfa_nw_ioc_hw_sem_release(ioc);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_initfail);
  break;

 case 129:
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_fail);
  bfa_ioc_pf_hwfailed(ioc);
  break;

 case 132:
  bfa_ioc_hw_sem_get_cancel(ioc);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_disabling_sync);
  break;

 case 128:
  bfa_ioc_hw_sem_get_cancel(ioc);
  bfa_ioc_firmware_unlock(ioc);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_reset);
  break;

 case 131:
  break;

 default:
  bfa_sm_fault(event);
 }
}
