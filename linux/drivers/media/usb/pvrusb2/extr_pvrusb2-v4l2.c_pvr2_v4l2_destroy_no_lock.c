
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_v4l2 {int channel; int * dev_radio; int * dev_video; } ;


 int PVR2_TRACE_STRUCT ;
 int kfree (struct pvr2_v4l2*) ;
 int pvr2_channel_done (int *) ;
 int pvr2_trace (int ,char*,struct pvr2_v4l2*) ;
 int pvr2_v4l2_dev_destroy (int *) ;

__attribute__((used)) static void pvr2_v4l2_destroy_no_lock(struct pvr2_v4l2 *vp)
{
 if (vp->dev_video) {
  pvr2_v4l2_dev_destroy(vp->dev_video);
  vp->dev_video = ((void*)0);
 }
 if (vp->dev_radio) {
  pvr2_v4l2_dev_destroy(vp->dev_radio);
  vp->dev_radio = ((void*)0);
 }

 pvr2_trace(PVR2_TRACE_STRUCT,"Destroying pvr2_v4l2 id=%p",vp);
 pvr2_channel_done(&vp->channel);
 kfree(vp);
}
