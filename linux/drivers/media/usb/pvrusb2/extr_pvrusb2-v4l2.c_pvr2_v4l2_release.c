
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_18__ {TYPE_2__* mc_head; } ;
struct pvr2_v4l2_fh {struct pvr2_v4l2_fh* input_map; TYPE_9__ channel; int fh; int * rhp; TYPE_1__* pdi; } ;
struct TYPE_13__ {TYPE_3__* mc_head; } ;
struct pvr2_v4l2 {TYPE_8__* dev_radio; TYPE_6__* dev_video; TYPE_4__ channel; } ;
struct pvr2_stream {int dummy; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_16__ {int fh_list; } ;
struct TYPE_17__ {TYPE_7__ devbase; } ;
struct TYPE_14__ {int fh_list; } ;
struct TYPE_15__ {TYPE_5__ devbase; } ;
struct TYPE_12__ {scalar_t__ disconnect_flag; } ;
struct TYPE_11__ {struct pvr2_hdw* hdw; } ;
struct TYPE_10__ {struct pvr2_v4l2* v4lp; } ;


 int PVR2_TRACE_OPEN_CLOSE ;
 int PVR2_TRACE_STRUCT ;
 int kfree (struct pvr2_v4l2_fh*) ;
 scalar_t__ list_empty (int *) ;
 int pvr2_channel_done (TYPE_9__*) ;
 int pvr2_hdw_set_streaming (struct pvr2_hdw*,int ) ;
 int pvr2_ioread_destroy (int *) ;
 struct pvr2_stream* pvr2_ioread_get_stream (int *) ;
 int pvr2_stream_set_callback (struct pvr2_stream*,int *,int *) ;
 int pvr2_trace (int ,char*,...) ;
 int pvr2_v4l2_destroy_no_lock (struct pvr2_v4l2*) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;

__attribute__((used)) static int pvr2_v4l2_release(struct file *file)
{
 struct pvr2_v4l2_fh *fhp = file->private_data;
 struct pvr2_v4l2 *vp = fhp->pdi->v4lp;
 struct pvr2_hdw *hdw = fhp->channel.mc_head->hdw;

 pvr2_trace(PVR2_TRACE_OPEN_CLOSE,"pvr2_v4l2_release");

 if (fhp->rhp) {
  struct pvr2_stream *sp;
  pvr2_hdw_set_streaming(hdw,0);
  sp = pvr2_ioread_get_stream(fhp->rhp);
  if (sp) pvr2_stream_set_callback(sp,((void*)0),((void*)0));
  pvr2_ioread_destroy(fhp->rhp);
  fhp->rhp = ((void*)0);
 }

 v4l2_fh_del(&fhp->fh);
 v4l2_fh_exit(&fhp->fh);
 file->private_data = ((void*)0);

 pvr2_channel_done(&fhp->channel);
 pvr2_trace(PVR2_TRACE_STRUCT,
     "Destroying pvr_v4l2_fh id=%p",fhp);
 if (fhp->input_map) {
  kfree(fhp->input_map);
  fhp->input_map = ((void*)0);
 }
 kfree(fhp);
 if (vp->channel.mc_head->disconnect_flag &&
     list_empty(&vp->dev_video->devbase.fh_list) &&
     list_empty(&vp->dev_radio->devbase.fh_list)) {
  pvr2_v4l2_destroy_no_lock(vp);
 }
 return 0;
}
