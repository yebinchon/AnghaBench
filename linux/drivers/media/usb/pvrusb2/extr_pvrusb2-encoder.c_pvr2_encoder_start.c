
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {scalar_t__ input_val; int active_stream_type; } ;


 int CX2341X_ENC_MUTE_VIDEO ;
 int CX2341X_ENC_START_CAPTURE ;
 scalar_t__ PVR2_CVAL_INPUT_RADIO ;


 int pvr2_encoder_vcmd (struct pvr2_hdw*,int ,int,int,...) ;
 int pvr2_write_register (struct pvr2_hdw*,int,int) ;

int pvr2_encoder_start(struct pvr2_hdw *hdw)
{
 int status;


 pvr2_write_register(hdw, 0x0048, 0xbfffffff);

 pvr2_encoder_vcmd(hdw,CX2341X_ENC_MUTE_VIDEO,1,
     hdw->input_val == PVR2_CVAL_INPUT_RADIO ? 1 : 0);

 switch (hdw->active_stream_type) {
 case 128:
  status = pvr2_encoder_vcmd(hdw,CX2341X_ENC_START_CAPTURE,2,
        0x01,0x14);
  break;
 case 129:
  status = pvr2_encoder_vcmd(hdw,CX2341X_ENC_START_CAPTURE,2,
        0,0x13);
  break;
 default:
  status = pvr2_encoder_vcmd(hdw,CX2341X_ENC_START_CAPTURE,2,
        0,0x13);
  break;
 }
 return status;
}
