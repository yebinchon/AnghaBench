
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ pad; scalar_t__ index; int code; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int MEDIA_BUS_FMT_UYVY8_2X8 ;
 int memset (struct v4l2_subdev_mbus_code_enum*,int ,int) ;

__attribute__((used)) static int tvp514x_enum_mbus_code(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_mbus_code_enum *code)
{
 u32 pad = code->pad;
 u32 index = code->index;

 memset(code, 0, sizeof(*code));
 code->index = index;
 code->pad = pad;

 if (index != 0)
  return -EINVAL;

 code->code = MEDIA_BUS_FMT_UYVY8_2X8;

 return 0;
}
