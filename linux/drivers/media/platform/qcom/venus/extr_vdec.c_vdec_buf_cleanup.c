
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int buf_count; } ;
struct vb2_buffer {int vb2_queue; } ;


 struct venus_inst* vb2_get_drv_priv (int ) ;
 int vdec_session_release (struct venus_inst*) ;

__attribute__((used)) static void vdec_buf_cleanup(struct vb2_buffer *vb)
{
 struct venus_inst *inst = vb2_get_drv_priv(vb->vb2_queue);

 inst->buf_count--;
 if (!inst->buf_count)
  vdec_session_release(inst);
}
