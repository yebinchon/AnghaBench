
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct via_camera {int n_cap_bufs; int lock; int sequence; int * cb_offsets; } ;
struct TYPE_5__ {int timestamp; } ;
struct TYPE_4__ {TYPE_2__ vb2_buf; int field; scalar_t__ sequence; } ;
struct via_buffer {TYPE_1__ vbuf; int queue; } ;
struct sg_table {int nents; int sgl; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int V4L2_FIELD_NONE ;
 int VB2_BUF_STATE_DONE ;
 int VCR_IC_ACTBUF ;
 int VCR_INTCTRL ;
 int ktime_get_ns () ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_buffer_done (TYPE_2__*,int ) ;
 struct sg_table* vb2_dma_sg_plane_desc (TYPE_2__*,int ) ;
 struct via_buffer* viacam_next_buffer (struct via_camera*) ;
 int viacam_read_reg (struct via_camera*,int ) ;
 int viafb_dma_copy_out_sg (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t viacam_irq(int irq, void *data)
{
 struct via_camera *cam = data;
 struct via_buffer *vb;
 int bufn;
 struct sg_table *sgt;

 mutex_lock(&cam->lock);




 vb = viacam_next_buffer(cam);
 if (vb == ((void*)0))
  goto done;



 bufn = (viacam_read_reg(cam, VCR_INTCTRL) & VCR_IC_ACTBUF) >> 3;
 bufn -= 1;
 if (bufn < 0)
  bufn = cam->n_cap_bufs - 1;



 sgt = vb2_dma_sg_plane_desc(&vb->vbuf.vb2_buf, 0);
 vb->vbuf.vb2_buf.timestamp = ktime_get_ns();
 viafb_dma_copy_out_sg(cam->cb_offsets[bufn], sgt->sgl, sgt->nents);
 vb->vbuf.sequence = cam->sequence++;
 vb->vbuf.field = V4L2_FIELD_NONE;
 list_del(&vb->queue);
 vb2_buffer_done(&vb->vbuf.vb2_buf, VB2_BUF_STATE_DONE);
done:
 mutex_unlock(&cam->lock);
 return IRQ_HANDLED;
}
