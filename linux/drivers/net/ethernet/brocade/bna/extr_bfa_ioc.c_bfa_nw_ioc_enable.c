
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int dbg_fwsave_once; } ;


 int IOC_E_ENABLE ;
 int bfa_fsm_send_event (struct bfa_ioc*,int ) ;
 int bfa_ioc_stats (struct bfa_ioc*,int ) ;
 int ioc_enables ;

void
bfa_nw_ioc_enable(struct bfa_ioc *ioc)
{
 bfa_ioc_stats(ioc, ioc_enables);
 ioc->dbg_fwsave_once = 1;

 bfa_fsm_send_event(ioc, IOC_E_ENABLE);
}
