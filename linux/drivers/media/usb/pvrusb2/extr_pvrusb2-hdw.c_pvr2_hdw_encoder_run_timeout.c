
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pvr2_hdw {int state_encoder_runok; int state_stale; int workpoll; } ;


 int encoder_run_timer ;
 struct pvr2_hdw* from_timer (int ,struct timer_list*,int ) ;
 struct pvr2_hdw* hdw ;
 int schedule_work (int *) ;
 int trace_stbit (char*,int) ;

__attribute__((used)) static void pvr2_hdw_encoder_run_timeout(struct timer_list *t)
{
 struct pvr2_hdw *hdw = from_timer(hdw, t, encoder_run_timer);
 if (!hdw->state_encoder_runok) {
  hdw->state_encoder_runok = !0;
  trace_stbit("state_encoder_runok",hdw->state_encoder_runok);
  hdw->state_stale = !0;
  schedule_work(&hdw->workpoll);
 }
}
