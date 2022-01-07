
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct ov13858 {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov13858_do_get_pad_format (struct ov13858*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 struct ov13858* to_ov13858 (struct v4l2_subdev*) ;

__attribute__((used)) static int ov13858_get_pad_format(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *fmt)
{
 struct ov13858 *ov13858 = to_ov13858(sd);
 int ret;

 mutex_lock(&ov13858->mutex);
 ret = ov13858_do_get_pad_format(ov13858, cfg, fmt);
 mutex_unlock(&ov13858->mutex);

 return ret;
}
