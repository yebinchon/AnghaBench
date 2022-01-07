
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int UIF_MAX_SIZE ;
 int UIF_MIN_SIZE ;
 int vsp1_subdev_enum_frame_size (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_frame_size_enum*,int ,int ,int ,int ) ;

__attribute__((used)) static int uif_enum_frame_size(struct v4l2_subdev *subdev,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_frame_size_enum *fse)
{
 return vsp1_subdev_enum_frame_size(subdev, cfg, fse, UIF_MIN_SIZE,
        UIF_MIN_SIZE, UIF_MAX_SIZE,
        UIF_MAX_SIZE);
}
