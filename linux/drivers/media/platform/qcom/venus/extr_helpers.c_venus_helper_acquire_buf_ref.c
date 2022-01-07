
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_buffer {int flags; } ;
struct vb2_v4l2_buffer {int dummy; } ;


 int HFI_BUFFERFLAG_READONLY ;
 struct venus_buffer* to_venus_buffer (struct vb2_v4l2_buffer*) ;

void venus_helper_acquire_buf_ref(struct vb2_v4l2_buffer *vbuf)
{
 struct venus_buffer *buf = to_venus_buffer(vbuf);

 buf->flags |= HFI_BUFFERFLAG_READONLY;
}
