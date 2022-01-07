
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_v4l2_buffer {int field; } ;
struct vb2_buffer {int vb2_queue; } ;
struct v4l2_pix_format_mplane {unsigned int num_planes; TYPE_1__* plane_fmt; } ;
struct TYPE_5__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct camss_video {TYPE_3__ active_fmt; } ;
struct TYPE_4__ {scalar_t__ sizeimage; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct camss_video* vb2_get_drv_priv (int ) ;
 scalar_t__ vb2_plane_size (struct vb2_buffer*,unsigned int) ;
 int vb2_set_plane_payload (struct vb2_buffer*,unsigned int,scalar_t__) ;

__attribute__((used)) static int video_buf_prepare(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct camss_video *video = vb2_get_drv_priv(vb->vb2_queue);
 const struct v4l2_pix_format_mplane *format =
      &video->active_fmt.fmt.pix_mp;
 unsigned int i;

 for (i = 0; i < format->num_planes; i++) {
  if (format->plane_fmt[i].sizeimage > vb2_plane_size(vb, i))
   return -EINVAL;

  vb2_set_plane_payload(vb, i, format->plane_fmt[i].sizeimage);
 }

 vbuf->field = V4L2_FIELD_NONE;

 return 0;
}
