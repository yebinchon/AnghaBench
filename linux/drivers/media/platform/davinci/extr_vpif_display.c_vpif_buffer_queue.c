
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_disp_buffer {int list; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct common_obj {int irqlock; int dma_queue; } ;
struct channel_obj {struct common_obj* common; } ;


 size_t VPIF_VIDEO_INDEX ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct vpif_disp_buffer* to_vpif_buffer (struct vb2_v4l2_buffer*) ;
 struct channel_obj* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void vpif_buffer_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct vpif_disp_buffer *buf = to_vpif_buffer(vbuf);
 struct channel_obj *ch = vb2_get_drv_priv(vb->vb2_queue);
 struct common_obj *common;
 unsigned long flags;

 common = &ch->common[VPIF_VIDEO_INDEX];


 spin_lock_irqsave(&common->irqlock, flags);
 list_add_tail(&buf->list, &common->dma_queue);
 spin_unlock_irqrestore(&common->irqlock, flags);
}
