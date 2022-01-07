
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int hb_count; } ;


 int IOC_E_HBFAIL ;
 int bfa_fsm_send_event (struct bfa_ioc*,int ) ;
 int bfa_ioc_stats (struct bfa_ioc*,int ) ;
 int bfa_ioc_stats_hb_count (struct bfa_ioc*,int ) ;
 int ioc_hbfails ;
 int pr_crit (char*) ;

__attribute__((used)) static void
bfa_ioc_recover(struct bfa_ioc *ioc)
{
 pr_crit("Heart Beat of IOC has failed\n");
 bfa_ioc_stats(ioc, ioc_hbfails);
 bfa_ioc_stats_hb_count(ioc, ioc->hb_count);
 bfa_fsm_send_event(ioc, IOC_E_HBFAIL);
}
