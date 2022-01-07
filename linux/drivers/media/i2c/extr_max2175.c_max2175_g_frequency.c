
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {scalar_t__ tuner; int frequency; int type; } ;
struct max2175 {int freq; } ;


 int EINVAL ;
 int V4L2_TUNER_RF ;
 struct max2175* max2175_from_sd (struct v4l2_subdev*) ;

__attribute__((used)) static int max2175_g_frequency(struct v4l2_subdev *sd,
          struct v4l2_frequency *vf)
{
 struct max2175 *ctx = max2175_from_sd(sd);
 int ret = 0;

 if (vf->tuner != 0)
  return -EINVAL;


 vf->type = V4L2_TUNER_RF;
 vf->frequency = ctx->freq;

 return ret;
}
