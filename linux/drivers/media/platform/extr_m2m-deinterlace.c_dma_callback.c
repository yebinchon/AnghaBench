
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timestamp; } ;
struct vb2_v4l2_buffer {int flags; int timecode; TYPE_1__ vb2_buf; } ;
struct deinterlace_dev {int m2m_dev; int busy; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct deinterlace_ctx {TYPE_2__ fh; struct deinterlace_dev* dev; } ;


 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ;
 int VB2_BUF_STATE_DONE ;
 int atomic_set (int *,int ) ;
 int dprintk (struct deinterlace_dev*,char*) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static void dma_callback(void *data)
{
 struct deinterlace_ctx *curr_ctx = data;
 struct deinterlace_dev *pcdev = curr_ctx->dev;
 struct vb2_v4l2_buffer *src_vb, *dst_vb;

 atomic_set(&pcdev->busy, 0);

 src_vb = v4l2_m2m_src_buf_remove(curr_ctx->fh.m2m_ctx);
 dst_vb = v4l2_m2m_dst_buf_remove(curr_ctx->fh.m2m_ctx);

 dst_vb->vb2_buf.timestamp = src_vb->vb2_buf.timestamp;
 dst_vb->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
 dst_vb->flags |=
  src_vb->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
 dst_vb->timecode = src_vb->timecode;

 v4l2_m2m_buf_done(src_vb, VB2_BUF_STATE_DONE);
 v4l2_m2m_buf_done(dst_vb, VB2_BUF_STATE_DONE);

 v4l2_m2m_job_finish(pcdev->m2m_dev, curr_ctx->fh.m2m_ctx);

 dprintk(pcdev, "dma transfers completed.\n");
}
