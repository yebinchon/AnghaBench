
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc {int bfa; TYPE_1__* cbfn; } ;
struct TYPE_2__ {int (* enable_cbfn ) (int ,int ) ;} ;


 int BFA_IOC_E_ENABLED ;
 int BFA_STATUS_OK ;
 int bfa_ioc_event_notify (struct bfa_ioc*,int ) ;
 int bfa_ioc_hb_monitor (struct bfa_ioc*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_ioc_sm_op_entry(struct bfa_ioc *ioc)
{
 ioc->cbfn->enable_cbfn(ioc->bfa, BFA_STATUS_OK);
 bfa_ioc_event_notify(ioc, BFA_IOC_E_ENABLED);
 bfa_ioc_hb_monitor(ioc);
}
