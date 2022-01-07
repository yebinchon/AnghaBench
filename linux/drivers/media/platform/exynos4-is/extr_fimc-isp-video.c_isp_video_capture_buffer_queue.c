
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; int index; } ;
struct isp_video_buf {scalar_t__ index; int * dma_addr; } ;
struct TYPE_6__ {int vdev; } ;
struct fimc_is_video {unsigned long buf_mask; scalar_t__ buf_count; scalar_t__ reqbufs_count; TYPE_3__ ve; struct isp_video_buf** buffers; TYPE_1__* format; } ;
struct fimc_isp {int state; struct fimc_is_video video_capture; } ;
struct fimc_is {TYPE_2__* is_p_region; int slock; } ;
struct TYPE_5__ {int * shared; } ;
struct TYPE_4__ {unsigned int memplanes; } ;


 unsigned long BIT (scalar_t__) ;
 int ST_ISP_VID_CAP_BUF_PREP ;
 int ST_ISP_VID_CAP_STREAMING ;
 struct fimc_is* fimc_isp_to_is (struct fimc_isp*) ;
 int isp_dbg (int,int *,char*,int,unsigned int,unsigned int,int ,int *) ;
 int isp_video_capture_start_streaming (int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 struct isp_video_buf* to_isp_video_buf (struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 int vb2_dma_contig_plane_dma_addr (struct vb2_buffer*,unsigned int) ;
 struct fimc_isp* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void isp_video_capture_buffer_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct fimc_isp *isp = vb2_get_drv_priv(vb->vb2_queue);
 struct fimc_is_video *video = &isp->video_capture;
 struct fimc_is *is = fimc_isp_to_is(isp);
 struct isp_video_buf *ivb = to_isp_video_buf(vbuf);
 unsigned long flags;
 unsigned int i;

 if (test_bit(ST_ISP_VID_CAP_BUF_PREP, &isp->state)) {
  spin_lock_irqsave(&is->slock, flags);
  video->buf_mask |= BIT(ivb->index);
  spin_unlock_irqrestore(&is->slock, flags);
 } else {
  unsigned int num_planes = video->format->memplanes;

  ivb->index = video->buf_count;
  video->buffers[ivb->index] = ivb;

  for (i = 0; i < num_planes; i++) {
   int buf_index = ivb->index * num_planes + i;

   ivb->dma_addr[i] = vb2_dma_contig_plane_dma_addr(vb, i);
   is->is_p_region->shared[32 + buf_index] =
       ivb->dma_addr[i];

   isp_dbg(2, &video->ve.vdev,
    "dma_buf %d (%d/%d/%d) addr: %pad\n",
    buf_index, ivb->index, i, vb->index,
    &ivb->dma_addr[i]);
  }

  if (++video->buf_count < video->reqbufs_count)
   return;

  video->buf_mask = (1UL << video->buf_count) - 1;
  set_bit(ST_ISP_VID_CAP_BUF_PREP, &isp->state);
 }

 if (!test_bit(ST_ISP_VID_CAP_STREAMING, &isp->state))
  isp_video_capture_start_streaming(vb->vb2_queue, 0);
}
