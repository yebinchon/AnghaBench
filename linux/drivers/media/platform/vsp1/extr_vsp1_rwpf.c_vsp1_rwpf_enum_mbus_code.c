
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {size_t index; unsigned int code; } ;
struct v4l2_subdev {int dummy; } ;


 size_t ARRAY_SIZE (unsigned int const*) ;
 int EINVAL ;




__attribute__((used)) static int vsp1_rwpf_enum_mbus_code(struct v4l2_subdev *subdev,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_mbus_code_enum *code)
{
 static const unsigned int codes[] = {
  129,
  130,
  128,
 };

 if (code->index >= ARRAY_SIZE(codes))
  return -EINVAL;

 code->code = codes[code->index];

 return 0;
}
