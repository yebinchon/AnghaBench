
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int vb2_buf; } ;
struct sh_veu_dev {int m2m_ctx; } ;


 int sh_veu_process (struct sh_veu_dev*,int *,int *) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;

__attribute__((used)) static void sh_veu_device_run(void *priv)
{
 struct sh_veu_dev *veu = priv;
 struct vb2_v4l2_buffer *src_buf, *dst_buf;

 src_buf = v4l2_m2m_next_src_buf(veu->m2m_ctx);
 dst_buf = v4l2_m2m_next_dst_buf(veu->m2m_ctx);

 if (src_buf && dst_buf)
  sh_veu_process(veu, &src_buf->vb2_buf, &dst_buf->vb2_buf);
}
