
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int reserved; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k6aa {int lock; TYPE_1__* preset; } ;
struct TYPE_2__ {struct v4l2_mbus_framefmt mbus_fmt; } ;


 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5k6aa* to_s5k6aa (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int s5k6aa_get_fmt(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct s5k6aa *s5k6aa = to_s5k6aa(sd);
 struct v4l2_mbus_framefmt *mf;

 memset(fmt->reserved, 0, sizeof(fmt->reserved));

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  mf = v4l2_subdev_get_try_format(sd, cfg, 0);
  fmt->format = *mf;
  return 0;
 }

 mutex_lock(&s5k6aa->lock);
 fmt->format = s5k6aa->preset->mbus_fmt;
 mutex_unlock(&s5k6aa->lock);

 return 0;
}
