
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int colorspace; int xfer_func; int quantization; int ycbcr_enc; int height; int width; } ;
struct ov5640_mode_info {int vact; int hact; } ;
struct ov5640_dev {int dummy; } ;
typedef enum ov5640_frame_rate { ____Placeholder_ov5640_frame_rate } ov5640_frame_rate ;
struct TYPE_3__ {scalar_t__ code; int colorspace; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int V4L2_MAP_XFER_FUNC_DEFAULT (int ) ;
 int V4L2_MAP_YCBCR_ENC_DEFAULT (int ) ;
 int V4L2_QUANTIZATION_FULL_RANGE ;
 struct ov5640_mode_info* ov5640_find_mode (struct ov5640_dev*,int,int ,int ,int) ;
 TYPE_1__* ov5640_formats ;
 struct ov5640_dev* to_ov5640_dev (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5640_try_fmt_internal(struct v4l2_subdev *sd,
       struct v4l2_mbus_framefmt *fmt,
       enum ov5640_frame_rate fr,
       const struct ov5640_mode_info **new_mode)
{
 struct ov5640_dev *sensor = to_ov5640_dev(sd);
 const struct ov5640_mode_info *mode;
 int i;

 mode = ov5640_find_mode(sensor, fr, fmt->width, fmt->height, 1);
 if (!mode)
  return -EINVAL;
 fmt->width = mode->hact;
 fmt->height = mode->vact;

 if (new_mode)
  *new_mode = mode;

 for (i = 0; i < ARRAY_SIZE(ov5640_formats); i++)
  if (ov5640_formats[i].code == fmt->code)
   break;
 if (i >= ARRAY_SIZE(ov5640_formats))
  i = 0;

 fmt->code = ov5640_formats[i].code;
 fmt->colorspace = ov5640_formats[i].colorspace;
 fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(fmt->colorspace);
 fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
 fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(fmt->colorspace);

 return 0;
}
