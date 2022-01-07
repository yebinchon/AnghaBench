
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k6a3 {int lock; } ;


 struct v4l2_mbus_framefmt* __s5k6a3_get_format (struct s5k6a3*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5k6a3* sd_to_s5k6a3 (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k6a3_get_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct s5k6a3 *sensor = sd_to_s5k6a3(sd);
 struct v4l2_mbus_framefmt *mf;

 mf = __s5k6a3_get_format(sensor, cfg, fmt->pad, fmt->which);

 mutex_lock(&sensor->lock);
 fmt->format = *mf;
 mutex_unlock(&sensor->lock);
 return 0;
}
