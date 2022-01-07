
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int m2m_ctx; } ;
struct vb2_v4l2_buffer {int dummy; } ;


 int VB2_BUF_STATE_ERROR ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;

__attribute__((used)) static void vdec_cancel_dst_buffers(struct venus_inst *inst)
{
 struct vb2_v4l2_buffer *buf;

 while ((buf = v4l2_m2m_dst_buf_remove(inst->m2m_ctx)))
  v4l2_m2m_buf_done(buf, VB2_BUF_STATE_ERROR);
}
