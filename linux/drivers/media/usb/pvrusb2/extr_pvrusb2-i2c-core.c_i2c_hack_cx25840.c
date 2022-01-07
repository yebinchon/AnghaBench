
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pvr2_hdw {int i2c_cx25840_hack_state; int ** i2c_func; } ;


 int EIO ;
 int PVR2_TRACE_CHIPS ;
 int PVR2_TRACE_ERROR_LEGS ;
 int pvr2_hdw_render_useless (struct pvr2_hdw*) ;
 int pvr2_i2c_basic_op (struct pvr2_hdw*,int,int*,int,int*,int) ;
 int pvr2_trace (int ,char*) ;

__attribute__((used)) static int i2c_hack_cx25840(struct pvr2_hdw *hdw,
       u8 i2c_addr,u8 *wdata,u16 wlen,u8 *rdata,u16 rlen)
{
 int ret;
 unsigned int subaddr;
 u8 wbuf[2];
 int state = hdw->i2c_cx25840_hack_state;

 if (!(rlen || wlen)) {



  return 0;
 }

 if (state == 3) {
  return pvr2_i2c_basic_op(hdw,i2c_addr,wdata,wlen,rdata,rlen);
 }
 if (wlen == 0) {
  switch (state) {
  case 1: subaddr = 0x0100; break;
  case 2: subaddr = 0x0101; break;
  default: goto fail;
  }
 } else if (wlen == 2) {
  subaddr = (wdata[0] << 8) | wdata[1];
  switch (subaddr) {
  case 0x0100: state = 1; break;
  case 0x0101: state = 2; break;
  default: goto fail;
  }
 } else {
  goto fail;
 }
 if (!rlen) goto success;
 state = 0;
 if (rlen != 1) goto fail;



 wbuf[0] = subaddr >> 8;
 wbuf[1] = subaddr;
 ret = pvr2_i2c_basic_op(hdw,i2c_addr,wbuf,2,rdata,rlen);

 if ((ret != 0) || (*rdata == 0x04) || (*rdata == 0x0a)) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "***WARNING*** Detected a wedged cx25840 chip; the device will not work.");
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "***WARNING*** Try power cycling the pvrusb2 device.");
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "***WARNING*** Disabling further access to the device to prevent other foul-ups.");

  hdw->i2c_func[0x44] = ((void*)0);
  pvr2_hdw_render_useless(hdw);
  goto fail;
 }


 pvr2_trace(PVR2_TRACE_CHIPS,"cx25840 appears to be OK.");
 state = 3;

 success:
 hdw->i2c_cx25840_hack_state = state;
 return 0;

 fail:
 hdw->i2c_cx25840_hack_state = state;
 return -EIO;
}
