
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {struct bfa_ioc* ioc; } ;
struct bfa_ioc {int sem_timer; } ;
typedef enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;


 int BFA_IOC_HWSEM_TOV ;




 int bfa_fsm_set_state (struct bfa_iocpf*,int ) ;
 int bfa_ioc_firmware_lock (struct bfa_ioc*) ;
 int bfa_ioc_firmware_unlock (struct bfa_ioc*) ;
 int bfa_ioc_hw_sem_get_cancel (struct bfa_ioc*) ;
 int bfa_ioc_pf_disabled (struct bfa_ioc*) ;
 int bfa_ioc_pf_hwfailed (struct bfa_ioc*) ;
 int bfa_ioc_sync_join (struct bfa_ioc*) ;
 int bfa_ioc_sync_start (struct bfa_ioc*) ;
 int bfa_iocpf_sm_fail ;
 int bfa_iocpf_sm_hwinit ;
 int bfa_iocpf_sm_mismatch ;
 int bfa_iocpf_sm_reset ;
 int bfa_nw_ioc_hw_sem_release (struct bfa_ioc*) ;
 int bfa_sm_fault (int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_fwcheck(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
 struct bfa_ioc *ioc = iocpf->ioc;

 switch (event) {
 case 130:
  if (bfa_ioc_firmware_lock(ioc)) {
   if (bfa_ioc_sync_start(ioc)) {
    bfa_ioc_sync_join(ioc);
    bfa_fsm_set_state(iocpf, bfa_iocpf_sm_hwinit);
   } else {
    bfa_ioc_firmware_unlock(ioc);
    bfa_nw_ioc_hw_sem_release(ioc);
    mod_timer(&ioc->sem_timer, jiffies +
     msecs_to_jiffies(BFA_IOC_HWSEM_TOV));
   }
  } else {
   bfa_nw_ioc_hw_sem_release(ioc);
   bfa_fsm_set_state(iocpf, bfa_iocpf_sm_mismatch);
  }
  break;

 case 129:
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_fail);
  bfa_ioc_pf_hwfailed(ioc);
  break;

 case 131:
  bfa_ioc_hw_sem_get_cancel(ioc);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_reset);
  bfa_ioc_pf_disabled(ioc);
  break;

 case 128:
  bfa_ioc_hw_sem_get_cancel(ioc);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_reset);
  break;

 default:
  bfa_sm_fault(event);
 }
}
