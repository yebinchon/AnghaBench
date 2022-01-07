
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int state_pipeline_req; int master_state; int big_lock; } ;


 int EIO ;
 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int PVR2_STATE_READY ;
 int PVR2_STATE_RUN ;
 int PVR2_TRACE_START_STOP ;
 int pvr2_hdw_state_sched (struct pvr2_hdw*) ;
 int pvr2_hdw_untrip_unlocked (struct pvr2_hdw*) ;
 int pvr2_hdw_wait (struct pvr2_hdw*,int) ;
 int pvr2_trace (int ,char*,char*) ;

int pvr2_hdw_set_streaming(struct pvr2_hdw *hdw,int enable_flag)
{
 int ret,st;
 LOCK_TAKE(hdw->big_lock); do {
  pvr2_hdw_untrip_unlocked(hdw);
  if ((!enable_flag) != !(hdw->state_pipeline_req)) {
   hdw->state_pipeline_req = enable_flag != 0;
   pvr2_trace(PVR2_TRACE_START_STOP,
       "/*--TRACE_STREAM--*/ %s",
       enable_flag ? "enable" : "disable");
  }
  pvr2_hdw_state_sched(hdw);
 } while (0); LOCK_GIVE(hdw->big_lock);
 if ((ret = pvr2_hdw_wait(hdw,0)) < 0) return ret;
 if (enable_flag) {
  while ((st = hdw->master_state) != PVR2_STATE_RUN) {
   if (st != PVR2_STATE_READY) return -EIO;
   if ((ret = pvr2_hdw_wait(hdw,st)) < 0) return ret;
  }
 }
 return 0;
}
