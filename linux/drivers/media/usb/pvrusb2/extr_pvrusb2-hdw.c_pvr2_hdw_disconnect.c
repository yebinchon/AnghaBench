
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int big_lock; int ctl_lock; } ;


 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int PVR2_TRACE_INIT ;
 int pvr2_hdw_remove_usb_stuff (struct pvr2_hdw*) ;
 int pvr2_trace (int ,char*,struct pvr2_hdw*) ;

void pvr2_hdw_disconnect(struct pvr2_hdw *hdw)
{
 pvr2_trace(PVR2_TRACE_INIT,"pvr2_hdw_disconnect(hdw=%p)",hdw);
 LOCK_TAKE(hdw->big_lock);
 LOCK_TAKE(hdw->ctl_lock);
 pvr2_hdw_remove_usb_stuff(hdw);
 LOCK_GIVE(hdw->ctl_lock);
 LOCK_GIVE(hdw->big_lock);
}
