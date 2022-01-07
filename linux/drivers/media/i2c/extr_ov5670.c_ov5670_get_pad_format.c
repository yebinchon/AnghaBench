
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5670 {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov5670_do_get_pad_format (struct ov5670*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 struct ov5670* to_ov5670 (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5670_get_pad_format(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct ov5670 *ov5670 = to_ov5670(sd);
 int ret;

 mutex_lock(&ov5670->mutex);
 ret = ov5670_do_get_pad_format(ov5670, cfg, fmt);
 mutex_unlock(&ov5670->mutex);

 return ret;
}
