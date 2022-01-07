
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int dummy; } ;
typedef enum ioc_event { ____Placeholder_ioc_event } ioc_event ;





 int bfa_fsm_set_state (struct bfa_ioc*,int ) ;
 int bfa_ioc_disable_comp (struct bfa_ioc*) ;
 int bfa_ioc_sm_enabling ;
 int bfa_ioc_sm_uninit ;
 int bfa_sm_fault (int) ;

__attribute__((used)) static void
bfa_ioc_sm_reset(struct bfa_ioc *ioc, enum ioc_event event)
{
 switch (event) {
 case 128:
  bfa_fsm_set_state(ioc, bfa_ioc_sm_enabling);
  break;

 case 129:
  bfa_ioc_disable_comp(ioc);
  break;

 case 130:
  bfa_fsm_set_state(ioc, bfa_ioc_sm_uninit);
  break;

 default:
  bfa_sm_fault(event);
 }
}
