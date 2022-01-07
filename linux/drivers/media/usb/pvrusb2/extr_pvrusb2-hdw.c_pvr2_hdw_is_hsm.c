
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {scalar_t__* cmd_buffer; int ctl_lock; } ;


 scalar_t__ FX2CMD_GET_USB_SPEED ;
 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int pvr2_send_request (struct pvr2_hdw*,scalar_t__*,int,scalar_t__*,int) ;

int pvr2_hdw_is_hsm(struct pvr2_hdw *hdw)
{
 int result;
 LOCK_TAKE(hdw->ctl_lock); do {
  hdw->cmd_buffer[0] = FX2CMD_GET_USB_SPEED;
  result = pvr2_send_request(hdw,
        hdw->cmd_buffer,1,
        hdw->cmd_buffer,1);
  if (result < 0) break;
  result = (hdw->cmd_buffer[0] != 0);
 } while(0); LOCK_GIVE(hdw->ctl_lock);
 return result;
}
