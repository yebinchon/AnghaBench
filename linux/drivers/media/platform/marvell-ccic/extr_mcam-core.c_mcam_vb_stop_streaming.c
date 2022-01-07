
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_2__ {int delivered; int singles; int frames; } ;
struct mcam_camera {scalar_t__ state; TYPE_1__ frame_state; } ;


 scalar_t__ S_BUFWAIT ;
 scalar_t__ S_IDLE ;
 scalar_t__ S_STREAMING ;
 int VB2_BUF_STATE_ERROR ;
 int cam_dbg (struct mcam_camera*,char*,int ,int ,int ) ;
 int mcam_ctlr_stop_dma (struct mcam_camera*) ;
 int mcam_vb_requeue_bufs (struct vb2_queue*,int ) ;
 struct mcam_camera* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void mcam_vb_stop_streaming(struct vb2_queue *vq)
{
 struct mcam_camera *cam = vb2_get_drv_priv(vq);

 cam_dbg(cam, "stop_streaming: %d frames, %d singles, %d delivered\n",
   cam->frame_state.frames, cam->frame_state.singles,
   cam->frame_state.delivered);
 if (cam->state == S_BUFWAIT) {

  cam->state = S_IDLE;
  return;
 }
 if (cam->state != S_STREAMING)
  return;
 mcam_ctlr_stop_dma(cam);




 mcam_vb_requeue_bufs(vq, VB2_BUF_STATE_ERROR);
}
