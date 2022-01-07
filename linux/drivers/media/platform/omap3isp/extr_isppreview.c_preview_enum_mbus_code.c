
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int pad; size_t index; void* code; } ;
struct v4l2_subdev {int dummy; } ;


 size_t ARRAY_SIZE (void**) ;
 int EINVAL ;


 void** preview_input_fmts ;
 void** preview_output_fmts ;

__attribute__((used)) static int preview_enum_mbus_code(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_mbus_code_enum *code)
{
 switch (code->pad) {
 case 129:
  if (code->index >= ARRAY_SIZE(preview_input_fmts))
   return -EINVAL;

  code->code = preview_input_fmts[code->index];
  break;
 case 128:
  if (code->index >= ARRAY_SIZE(preview_output_fmts))
   return -EINVAL;

  code->code = preview_output_fmts[code->index];
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
