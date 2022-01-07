
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {scalar_t__ decoder_client_id; int v4l2_dev; } ;


 int ENOTTY ;
 int PVR2_TRACE_INIT ;
 int core ;
 int pvr2_hdw_cx25840_vbi_hack (struct pvr2_hdw*) ;
 int pvr2_trace (int ,char*) ;
 int reset ;
 int v4l2_device_call_all (int *,scalar_t__,int ,int ,int ) ;

int pvr2_hdw_cmd_decoder_reset(struct pvr2_hdw *hdw)
{
 pvr2_trace(PVR2_TRACE_INIT,
     "Requesting decoder reset");
 if (hdw->decoder_client_id) {
  v4l2_device_call_all(&hdw->v4l2_dev, hdw->decoder_client_id,
         core, reset, 0);
  pvr2_hdw_cx25840_vbi_hack(hdw);
  return 0;
 }
 pvr2_trace(PVR2_TRACE_INIT,
     "Unable to reset decoder: nothing attached");
 return -ENOTTY;
}
