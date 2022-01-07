
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int field; } ;
struct vb2_buffer {int dummy; } ;


 int V4L2_FIELD_NONE ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;

__attribute__((used)) static int vicodec_buf_out_validate(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);

 vbuf->field = V4L2_FIELD_NONE;
 return 0;
}
