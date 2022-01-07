
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct aspeed_video_buffer {int link; } ;
struct aspeed_video {int flags; int lock; int buffers; } ;


 int VIDEO_FRAME_INPRG ;
 int VIDEO_STREAMING ;
 int aspeed_video_start_frame (struct aspeed_video*) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 struct aspeed_video_buffer* to_aspeed_video_buffer (struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct aspeed_video* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void aspeed_video_buf_queue(struct vb2_buffer *vb)
{
 bool empty;
 struct aspeed_video *video = vb2_get_drv_priv(vb->vb2_queue);
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct aspeed_video_buffer *avb = to_aspeed_video_buffer(vbuf);
 unsigned long flags;

 spin_lock_irqsave(&video->lock, flags);
 empty = list_empty(&video->buffers);
 list_add_tail(&avb->link, &video->buffers);
 spin_unlock_irqrestore(&video->lock, flags);

 if (test_bit(VIDEO_STREAMING, &video->flags) &&
     !test_bit(VIDEO_FRAME_INPRG, &video->flags) && empty)
  aspeed_video_start_frame(video);
}
