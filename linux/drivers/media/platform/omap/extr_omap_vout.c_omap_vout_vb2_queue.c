
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int vb2_queue; } ;
struct omap_vout_device {int dma_queue; } ;
struct omap_vout_buffer {int queue; } ;


 int list_add_tail (int *,int *) ;
 struct omap_vout_device* vb2_get_drv_priv (int ) ;
 struct omap_vout_buffer* vb2_to_omap_vout_buffer (struct vb2_buffer*) ;

__attribute__((used)) static void omap_vout_vb2_queue(struct vb2_buffer *vb)
{
 struct omap_vout_device *vout = vb2_get_drv_priv(vb->vb2_queue);
 struct omap_vout_buffer *voutbuf = vb2_to_omap_vout_buffer(vb);

 list_add_tail(&voutbuf->queue, &vout->dma_queue);
}
