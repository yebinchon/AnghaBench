
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {int lock; int res_type; } ;


 int EINVAL ;
 struct v4l2_mbus_framefmt* __find_format (struct m5mols_info*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct m5mols_info* to_m5mols (struct v4l2_subdev*) ;

__attribute__((used)) static int m5mols_get_fmt(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct m5mols_info *info = to_m5mols(sd);
 struct v4l2_mbus_framefmt *format;
 int ret = 0;

 mutex_lock(&info->lock);

 format = __find_format(info, cfg, fmt->which, info->res_type);
 if (format)
  fmt->format = *format;
 else
  ret = -EINVAL;

 mutex_unlock(&info->lock);
 return ret;
}
