
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; int code; } ;
struct v4l2_subdev_format {int which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {int res_type; int lock; int resolution; } ;
typedef enum m5mols_restype { ____Placeholder_m5mols_restype } m5mols_restype ;
struct TYPE_2__ {int code; } ;


 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct v4l2_mbus_framefmt* __find_format (struct m5mols_info*,struct v4l2_subdev_pad_config*,int ,int) ;
 int __find_resolution (struct v4l2_subdev*,struct v4l2_mbus_framefmt*,int*,int *) ;
 TYPE_1__* m5mols_default_ffmt ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct m5mols_info* to_m5mols (struct v4l2_subdev*) ;

__attribute__((used)) static int m5mols_set_fmt(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct m5mols_info *info = to_m5mols(sd);
 struct v4l2_mbus_framefmt *format = &fmt->format;
 struct v4l2_mbus_framefmt *sfmt;
 enum m5mols_restype type;
 u32 resolution = 0;
 int ret;

 ret = __find_resolution(sd, format, &type, &resolution);
 if (ret < 0)
  return ret;

 sfmt = __find_format(info, cfg, fmt->which, type);
 if (!sfmt)
  return 0;

 mutex_lock(&info->lock);

 format->code = m5mols_default_ffmt[type].code;
 format->colorspace = V4L2_COLORSPACE_JPEG;
 format->field = V4L2_FIELD_NONE;

 if (fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
  *sfmt = *format;
  info->resolution = resolution;
  info->res_type = type;
 }

 mutex_unlock(&info->lock);
 return ret;
}
