
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int flag_decoder_missed; scalar_t__ decoder_client_id; int v4l2_dev; } ;


 int EIO ;
 int PVR2_TRACE_CHIPS ;
 int PVR2_TRACE_ERROR_LEGS ;
 int audio ;
 int pvr2_trace (int ,char*,...) ;
 int s_stream ;
 int trace_stbit (char*,int) ;
 int v4l2_device_call_all (int *,int ,int ,int ,int) ;
 int video ;

__attribute__((used)) static int pvr2_decoder_enable(struct pvr2_hdw *hdw,int enablefl)
{




 pvr2_trace(PVR2_TRACE_CHIPS, "subdev v4l2 stream=%s",
     (enablefl ? "on" : "off"));
 v4l2_device_call_all(&hdw->v4l2_dev, 0, video, s_stream, enablefl);
 v4l2_device_call_all(&hdw->v4l2_dev, 0, audio, s_stream, enablefl);
 if (hdw->decoder_client_id) {



  return 0;
 }
 if (!hdw->flag_decoder_missed) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "***WARNING*** No decoder present");
  hdw->flag_decoder_missed = !0;
  trace_stbit("flag_decoder_missed",
       hdw->flag_decoder_missed);
 }
 return -EIO;
}
