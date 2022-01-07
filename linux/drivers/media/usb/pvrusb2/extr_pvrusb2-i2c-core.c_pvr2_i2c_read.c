
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pvr2_hdw {int* cmd_buffer; int ctl_lock; } ;


 int EIO ;
 int ENOTSUPP ;
 int FX2CMD_I2C_READ ;
 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int PVR2_TRACE_ERROR_LEGS ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int pvr2_send_request (struct pvr2_hdw*,int*,int,int*,int) ;
 int pvr2_trace (int ,char*,int,int,unsigned int) ;
 int trace_i2c (char*,int,int) ;

__attribute__((used)) static int pvr2_i2c_read(struct pvr2_hdw *hdw,
    u8 i2c_addr,
    u8 *data,
    u16 dlen,
    u8 *res,
    u16 rlen)
{

 int ret;


 if (!data) dlen = 0;
 if (dlen > (sizeof(hdw->cmd_buffer) - 4)) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "Killing an I2C read to %u that has wlen too large (desired=%u limit=%u)",
      i2c_addr,
      dlen,(unsigned int)(sizeof(hdw->cmd_buffer) - 4));
  return -ENOTSUPP;
 }
 if (res && (rlen > (sizeof(hdw->cmd_buffer) - 1))) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "Killing an I2C read to %u that has rlen too large (desired=%u limit=%u)",
      i2c_addr,
      rlen,(unsigned int)(sizeof(hdw->cmd_buffer) - 1));
  return -ENOTSUPP;
 }

 LOCK_TAKE(hdw->ctl_lock);


 memset(hdw->cmd_buffer, 0, sizeof(hdw->cmd_buffer));


 hdw->cmd_buffer[0] = FX2CMD_I2C_READ;
 hdw->cmd_buffer[1] = dlen;
 hdw->cmd_buffer[2] = rlen;

 hdw->cmd_buffer[3] = i2c_addr;
 if (dlen) memcpy(hdw->cmd_buffer + 4, data, dlen);


 ret = pvr2_send_request(hdw,
    hdw->cmd_buffer,
    4 + dlen,
    hdw->cmd_buffer,
    rlen + 1);
 if (!ret) {
  if (hdw->cmd_buffer[0] != 8) {
   ret = -EIO;
   if (hdw->cmd_buffer[0] != 7) {
    trace_i2c("unexpected status from i2_read[%d]: %d",
       i2c_addr,hdw->cmd_buffer[0]);
   }
  }
 }


 if (res && rlen) {
  if (ret) {

   memset(res, 0, rlen);
  } else {
   memcpy(res, hdw->cmd_buffer + 1, rlen);
  }
 }

 LOCK_GIVE(hdw->ctl_lock);

 return ret;
}
