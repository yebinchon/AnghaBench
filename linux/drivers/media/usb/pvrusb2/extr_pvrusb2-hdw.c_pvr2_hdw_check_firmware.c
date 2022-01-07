
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int ctl_lock; int * cmd_buffer; } ;


 int FX2CMD_GET_EEPROM_ADDR ;
 int HZ ;
 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int PVR2_TRACE_INIT ;
 int pvr2_send_request_ex (struct pvr2_hdw*,int,int,int *,int,int *,int) ;
 int pvr2_trace (int ,char*,...) ;

__attribute__((used)) static int pvr2_hdw_check_firmware(struct pvr2_hdw *hdw)
{




 int result;
 LOCK_TAKE(hdw->ctl_lock); do {
  hdw->cmd_buffer[0] = FX2CMD_GET_EEPROM_ADDR;
  result = pvr2_send_request_ex(hdw,HZ*1,!0,
        hdw->cmd_buffer,1,
        hdw->cmd_buffer,1);
  if (result < 0) break;
 } while(0); LOCK_GIVE(hdw->ctl_lock);
 if (result) {
  pvr2_trace(PVR2_TRACE_INIT,
      "Probe of device endpoint 1 result status %d",
      result);
 } else {
  pvr2_trace(PVR2_TRACE_INIT,
      "Probe of device endpoint 1 succeeded");
 }
 return result == 0;
}
