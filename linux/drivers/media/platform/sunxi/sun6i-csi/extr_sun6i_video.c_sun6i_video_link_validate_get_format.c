
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_format {int pad; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int index; int entity; } ;


 int EINVAL ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 scalar_t__ is_media_entity_v4l2_subdev (int ) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;
 int v4l2_subdev_call (struct v4l2_subdev*,struct media_pad*,int ,int *,struct v4l2_subdev_format*) ;

__attribute__((used)) static int sun6i_video_link_validate_get_format(struct media_pad *pad,
      struct v4l2_subdev_format *fmt)
{
 if (is_media_entity_v4l2_subdev(pad->entity)) {
  struct v4l2_subdev *sd =
    media_entity_to_v4l2_subdev(pad->entity);

  fmt->which = V4L2_SUBDEV_FORMAT_ACTIVE;
  fmt->pad = pad->index;
  return v4l2_subdev_call(sd, pad, get_fmt, ((void*)0), fmt);
 }

 return -EINVAL;
}
