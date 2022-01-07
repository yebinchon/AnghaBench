
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int big_lock; int enc_ctl_state; int v4l2_dev; } ;


 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int PVR2_TRACE_INFO ;
 int core ;
 int cx2341x_log_status (int *,char*) ;
 int log_status ;
 int pr_info (char*,int) ;
 int pvr2_hdw_get_unit_number (struct pvr2_hdw*) ;
 int pvr2_hdw_state_log_state (struct pvr2_hdw*) ;
 int pvr2_trace (int ,char*) ;
 int v4l2_device_call_all (int *,int ,int ,int ) ;

void pvr2_hdw_trigger_module_log(struct pvr2_hdw *hdw)
{
 int nr = pvr2_hdw_get_unit_number(hdw);
 LOCK_TAKE(hdw->big_lock);
 do {
  pr_info("pvrusb2: =================  START STATUS CARD #%d  =================\n", nr);
  v4l2_device_call_all(&hdw->v4l2_dev, 0, core, log_status);
  pvr2_trace(PVR2_TRACE_INFO,"cx2341x config:");
  cx2341x_log_status(&hdw->enc_ctl_state, "pvrusb2");
  pvr2_hdw_state_log_state(hdw);
  pr_info("pvrusb2: ==================  END STATUS CARD #%d  ==================\n", nr);
 } while (0);
 LOCK_GIVE(hdw->big_lock);
}
