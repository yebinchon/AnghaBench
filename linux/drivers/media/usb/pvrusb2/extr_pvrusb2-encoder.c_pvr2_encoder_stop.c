
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int active_stream_type; } ;


 int CX2341X_ENC_STOP_CAPTURE ;


 int pvr2_encoder_vcmd (struct pvr2_hdw*,int ,int,int,int,int) ;
 int pvr2_write_register (struct pvr2_hdw*,int,int) ;

int pvr2_encoder_stop(struct pvr2_hdw *hdw)
{
 int status;


 pvr2_write_register(hdw, 0x0048, 0xffffffff);

 switch (hdw->active_stream_type) {
 case 128:
  status = pvr2_encoder_vcmd(hdw,CX2341X_ENC_STOP_CAPTURE,3,
        0x01,0x01,0x14);
  break;
 case 129:
  status = pvr2_encoder_vcmd(hdw,CX2341X_ENC_STOP_CAPTURE,3,
        0x01,0,0x13);
  break;
 default:
  status = pvr2_encoder_vcmd(hdw,CX2341X_ENC_STOP_CAPTURE,3,
        0x01,0,0x13);
  break;
 }

 return status;
}
