
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_i2c_data {TYPE_1__* chip; } ;
struct vb2_v4l2_buffer {int field; } ;
struct vb2_buffer {int vb2_queue; } ;
struct TYPE_2__ {unsigned int buffer_size; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct video_i2c_data* vb2_get_drv_priv (int ) ;
 unsigned int vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,unsigned int) ;

__attribute__((used)) static int buffer_prepare(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct video_i2c_data *data = vb2_get_drv_priv(vb->vb2_queue);
 unsigned int size = data->chip->buffer_size;

 if (vb2_plane_size(vb, 0) < size)
  return -EINVAL;

 vbuf->field = V4L2_FIELD_NONE;
 vb2_set_plane_payload(vb, 0, size);

 return 0;
}
