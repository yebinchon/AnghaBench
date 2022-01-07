
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_camera {int buffer_queue; } ;
struct via_buffer {int queue; } ;
struct vb2_buffer {int vb2_queue; } ;


 int list_add_tail (int *,int *) ;
 struct via_camera* vb2_get_drv_priv (int ) ;
 struct via_buffer* vb2_to_via_buffer (struct vb2_buffer*) ;

__attribute__((used)) static void viacam_vb2_queue(struct vb2_buffer *vb)
{
 struct via_camera *cam = vb2_get_drv_priv(vb->vb2_queue);
 struct via_buffer *via = vb2_to_via_buffer(vb);

 list_add_tail(&via->queue, &cam->buffer_queue);
}
