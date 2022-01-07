
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pvr2_hdw {int state_encoder_waitok; int state_stale; int workpoll; } ;


 int encoder_wait_timer ;
 struct pvr2_hdw* from_timer (int ,struct timer_list*,int ) ;
 struct pvr2_hdw* hdw ;
 int schedule_work (int *) ;
 int trace_stbit (char*,int) ;

__attribute__((used)) static void pvr2_hdw_encoder_wait_timeout(struct timer_list *t)
{
 struct pvr2_hdw *hdw = from_timer(hdw, t, encoder_wait_timer);
 hdw->state_encoder_waitok = !0;
 trace_stbit("state_encoder_waitok",hdw->state_encoder_waitok);
 hdw->state_stale = !0;
 schedule_work(&hdw->workpoll);
}
