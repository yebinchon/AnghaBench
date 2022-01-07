
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int tef6862_s_tuner(struct v4l2_subdev *sd, const struct v4l2_tuner *v)
{
 return v->index ? -EINVAL : 0;
}
