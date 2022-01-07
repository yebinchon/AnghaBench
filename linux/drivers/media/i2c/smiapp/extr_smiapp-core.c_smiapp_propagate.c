
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; int width; } ;
struct smiapp_subdev {int dummy; } ;
struct smiapp_sensor {int binning_horizontal; int binning_vertical; struct smiapp_subdev* binner; int scaling_mode; int * limits; int scale_m; struct smiapp_subdev* scaler; } ;


 int BUG () ;
 size_t SMIAPP_LIMIT_SCALER_N_MIN ;
 int SMIAPP_PADS ;
 size_t SMIAPP_PAD_SINK ;
 size_t SMIAPP_PAD_SRC ;
 int SMIAPP_SCALING_MODE_NONE ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int smiapp_get_crop_compose (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_rect**,struct v4l2_rect**,int) ;
 struct smiapp_sensor* to_smiapp_sensor (struct v4l2_subdev*) ;
 struct smiapp_subdev* to_smiapp_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static void smiapp_propagate(struct v4l2_subdev *subdev,
        struct v4l2_subdev_pad_config *cfg, int which,
        int target)
{
 struct smiapp_sensor *sensor = to_smiapp_sensor(subdev);
 struct smiapp_subdev *ssd = to_smiapp_subdev(subdev);
 struct v4l2_rect *comp, *crops[SMIAPP_PADS];

 smiapp_get_crop_compose(subdev, cfg, crops, &comp, which);

 switch (target) {
 case 128:
  comp->width = crops[SMIAPP_PAD_SINK]->width;
  comp->height = crops[SMIAPP_PAD_SINK]->height;
  if (which == V4L2_SUBDEV_FORMAT_ACTIVE) {
   if (ssd == sensor->scaler) {
    sensor->scale_m =
     sensor->limits[
      SMIAPP_LIMIT_SCALER_N_MIN];
    sensor->scaling_mode =
     SMIAPP_SCALING_MODE_NONE;
   } else if (ssd == sensor->binner) {
    sensor->binning_horizontal = 1;
    sensor->binning_vertical = 1;
   }
  }

 case 129:
  *crops[SMIAPP_PAD_SRC] = *comp;
  break;
 default:
  BUG();
 }
}
