
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int buf_count; } ;
struct vb2_buffer {int vb2_queue; } ;


 struct venus_inst* vb2_get_drv_priv (int ) ;
 int venus_helper_vb2_buf_init (struct vb2_buffer*) ;

__attribute__((used)) static int vdec_buf_init(struct vb2_buffer *vb)
{
 struct venus_inst *inst = vb2_get_drv_priv(vb->vb2_queue);

 inst->buf_count++;

 return venus_helper_vb2_buf_init(vb);
}
