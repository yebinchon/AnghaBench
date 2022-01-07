
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc {int bfa; TYPE_1__* cbfn; } ;
typedef enum ioc_event { ____Placeholder_ioc_event } ioc_event ;
struct TYPE_2__ {int (* enable_cbfn ) (int ,int ) ;} ;


 int BFA_STATUS_IOC_FAILURE ;







 int bfa_fsm_set_state (struct bfa_ioc*,int ) ;
 int bfa_ioc_sm_disabling ;
 int bfa_ioc_sm_fail ;
 int bfa_ioc_sm_getattr ;
 int bfa_ioc_sm_hwfail ;
 int bfa_ioc_sm_uninit ;
 int bfa_iocpf_initfail (struct bfa_ioc*) ;
 int bfa_iocpf_stop (struct bfa_ioc*) ;
 int bfa_sm_fault (int) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void
bfa_ioc_sm_fail_retry(struct bfa_ioc *ioc, enum ioc_event event)
{
 switch (event) {
 case 131:
  bfa_fsm_set_state(ioc, bfa_ioc_sm_getattr);
  break;

 case 128:
 case 130:



  ioc->cbfn->enable_cbfn(ioc->bfa, BFA_STATUS_IOC_FAILURE);
  bfa_fsm_set_state(ioc, bfa_ioc_sm_fail);
  if (event != 128)
   bfa_iocpf_initfail(ioc);
  break;

 case 129:
  ioc->cbfn->enable_cbfn(ioc->bfa, BFA_STATUS_IOC_FAILURE);
  bfa_fsm_set_state(ioc, bfa_ioc_sm_hwfail);
  break;

 case 132:
  break;

 case 133:
  bfa_fsm_set_state(ioc, bfa_ioc_sm_disabling);
  break;

 case 134:
  bfa_fsm_set_state(ioc, bfa_ioc_sm_uninit);
  bfa_iocpf_stop(ioc);
  break;

 default:
  bfa_sm_fault(event);
 }
}
