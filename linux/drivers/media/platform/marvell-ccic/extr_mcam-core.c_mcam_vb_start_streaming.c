
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_2__ {scalar_t__ delivered; scalar_t__ singles; scalar_t__ frames; } ;
struct mcam_camera {scalar_t__ state; scalar_t__ buffer_mode; unsigned int nbufs; int flags; int buffers; scalar_t__ sequence; TYPE_1__ frame_state; } ;


 scalar_t__ B_vmalloc ;
 scalar_t__ CF_FRAME_SOF0 ;
 int EINVAL ;
 scalar_t__ S_BUFWAIT ;
 scalar_t__ S_IDLE ;
 int VB2_BUF_STATE_QUEUED ;
 int clear_bit (scalar_t__,int *) ;
 scalar_t__ list_empty (int *) ;
 int mcam_read_setup (struct mcam_camera*) ;
 int mcam_vb_requeue_bufs (struct vb2_queue*,int ) ;
 struct mcam_camera* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int mcam_vb_start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct mcam_camera *cam = vb2_get_drv_priv(vq);
 unsigned int frame;
 int ret;

 if (cam->state != S_IDLE) {
  mcam_vb_requeue_bufs(vq, VB2_BUF_STATE_QUEUED);
  return -EINVAL;
 }
 cam->frame_state.frames = 0;
 cam->frame_state.singles = 0;
 cam->frame_state.delivered = 0;
 cam->sequence = 0;







 if (cam->buffer_mode != B_vmalloc && list_empty(&cam->buffers)) {
  cam->state = S_BUFWAIT;
  return 0;
 }





 for (frame = 0; frame < cam->nbufs; frame++)
  clear_bit(CF_FRAME_SOF0 + frame, &cam->flags);

 ret = mcam_read_setup(cam);
 if (ret)
  mcam_vb_requeue_bufs(vq, VB2_BUF_STATE_QUEUED);
 return ret;
}
