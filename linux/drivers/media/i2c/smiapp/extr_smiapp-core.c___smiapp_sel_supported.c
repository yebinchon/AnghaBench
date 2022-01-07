
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_selection {int target; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct smiapp_subdev {int source_pad; } ;
struct smiapp_sensor {int * limits; struct smiapp_subdev* scaler; struct smiapp_subdev* binner; struct smiapp_subdev* pixel_array; struct smiapp_subdev* src; } ;


 int EINVAL ;
 int SMIAPP_DIGITAL_CROP_CAPABILITY_INPUT_CROP ;
 size_t SMIAPP_LIMIT_DIGITAL_CROP_CAPABILITY ;
 size_t SMIAPP_LIMIT_SCALING_CAPABILITY ;
 int SMIAPP_PAD_SINK ;
 int SMIAPP_PAD_SRC ;
 int SMIAPP_PA_PAD_SRC ;
 int SMIAPP_SCALING_CAPABILITY_NONE ;





 struct smiapp_sensor* to_smiapp_sensor (struct v4l2_subdev*) ;
 struct smiapp_subdev* to_smiapp_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int __smiapp_sel_supported(struct v4l2_subdev *subdev,
      struct v4l2_subdev_selection *sel)
{
 struct smiapp_sensor *sensor = to_smiapp_sensor(subdev);
 struct smiapp_subdev *ssd = to_smiapp_subdev(subdev);


 switch (sel->target) {
 case 130:
 case 129:
  if (ssd == sensor->pixel_array
      && sel->pad == SMIAPP_PA_PAD_SRC)
   return 0;
  if (ssd == sensor->src
      && sel->pad == SMIAPP_PAD_SRC)
   return 0;
  if (ssd == sensor->scaler
      && sel->pad == SMIAPP_PAD_SINK
      && sensor->limits[SMIAPP_LIMIT_DIGITAL_CROP_CAPABILITY]
      == SMIAPP_DIGITAL_CROP_CAPABILITY_INPUT_CROP)
   return 0;
  return -EINVAL;
 case 128:
  if (ssd == sensor->pixel_array
      && sel->pad == SMIAPP_PA_PAD_SRC)
   return 0;
  return -EINVAL;
 case 132:
 case 131:
  if (sel->pad == ssd->source_pad)
   return -EINVAL;
  if (ssd == sensor->binner)
   return 0;
  if (ssd == sensor->scaler
      && sensor->limits[SMIAPP_LIMIT_SCALING_CAPABILITY]
      != SMIAPP_SCALING_CAPABILITY_NONE)
   return 0;

 default:
  return -EINVAL;
 }
}
