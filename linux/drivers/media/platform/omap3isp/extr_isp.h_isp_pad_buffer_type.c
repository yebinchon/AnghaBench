
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_pads; TYPE_1__* pads; } ;
struct v4l2_subdev {TYPE_2__ entity; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_3__ {int flags; } ;


 int MEDIA_PAD_FL_SINK ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;

__attribute__((used)) static inline enum v4l2_buf_type
isp_pad_buffer_type(const struct v4l2_subdev *subdev, int pad)
{
 if (pad >= subdev->entity.num_pads)
  return 0;

 if (subdev->entity.pads[pad].flags & MEDIA_PAD_FL_SINK)
  return V4L2_BUF_TYPE_VIDEO_OUTPUT;
 else
  return V4L2_BUF_TYPE_VIDEO_CAPTURE;
}
