
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int timestamp; } ;
struct vb2_v4l2_buffer {int flags; int timecode; TYPE_1__ vb2_buf; } ;
struct sh_veu_dev {int xaction; int lock; int m2m_ctx; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ;
 int VB2_BUF_STATE_DONE ;
 int VEU_EIER ;
 int VEU_EVTR ;
 int VEU_STR ;
 int sh_veu_reg_read (struct sh_veu_dev*,int ) ;
 int sh_veu_reg_write (struct sh_veu_dev*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static irqreturn_t sh_veu_isr(int irq, void *dev_id)
{
 struct sh_veu_dev *veu = dev_id;
 struct vb2_v4l2_buffer *dst;
 struct vb2_v4l2_buffer *src;
 u32 status = sh_veu_reg_read(veu, VEU_EVTR);


 if (!(status & 1))
  return IRQ_NONE;


 sh_veu_reg_write(veu, VEU_EIER, 0);

 sh_veu_reg_write(veu, VEU_STR, 0);

 sh_veu_reg_write(veu, VEU_EVTR, status & ~1);


 dst = v4l2_m2m_dst_buf_remove(veu->m2m_ctx);
 src = v4l2_m2m_src_buf_remove(veu->m2m_ctx);
 if (!src || !dst)
  return IRQ_NONE;

 dst->vb2_buf.timestamp = src->vb2_buf.timestamp;
 dst->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
 dst->flags |=
  src->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
 dst->timecode = src->timecode;

 spin_lock(&veu->lock);
 v4l2_m2m_buf_done(src, VB2_BUF_STATE_DONE);
 v4l2_m2m_buf_done(dst, VB2_BUF_STATE_DONE);
 spin_unlock(&veu->lock);

 veu->xaction++;

 return IRQ_WAKE_THREAD;
}
