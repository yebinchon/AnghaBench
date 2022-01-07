
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ index; size_t pad; int code; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;




 size_t S5C73M3_NUM_PADS ;

__attribute__((used)) static int s5c73m3_enum_mbus_code(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_mbus_code_enum *code)
{
 static const int codes[] = {
   [130] = 131,
   [128] = 129};

 if (code->index > 0 || code->pad >= S5C73M3_NUM_PADS)
  return -EINVAL;

 code->code = codes[code->pad];

 return 0;
}
