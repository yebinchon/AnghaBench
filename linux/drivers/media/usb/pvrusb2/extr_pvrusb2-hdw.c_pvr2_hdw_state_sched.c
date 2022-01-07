
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int state_stale; int workpoll; } ;


 int schedule_work (int *) ;
 int trace_stbit (char*,int) ;

__attribute__((used)) static void pvr2_hdw_state_sched(struct pvr2_hdw *hdw)
{
 if (hdw->state_stale) return;
 hdw->state_stale = !0;
 trace_stbit("state_stale",hdw->state_stale);
 schedule_work(&hdw->workpoll);
}
