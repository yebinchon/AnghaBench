
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; int capability; int rangehigh; int rangelow; int type; int name; } ;
struct v4l2_subdev {int dummy; } ;
struct max2175 {TYPE_1__* bands_rf; } ;
struct TYPE_2__ {int rangehigh; int rangelow; } ;


 int EINVAL ;
 int V4L2_TUNER_CAP_1HZ ;
 int V4L2_TUNER_CAP_FREQ_BANDS ;
 int V4L2_TUNER_RF ;
 struct max2175* max2175_from_sd (struct v4l2_subdev*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int max2175_g_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct max2175 *ctx = max2175_from_sd(sd);

 if (vt->index > 0)
  return -EINVAL;

 strscpy(vt->name, "RF", sizeof(vt->name));
 vt->type = V4L2_TUNER_RF;
 vt->capability = V4L2_TUNER_CAP_1HZ | V4L2_TUNER_CAP_FREQ_BANDS;
 vt->rangelow = ctx->bands_rf->rangelow;
 vt->rangehigh = ctx->bands_rf->rangehigh;

 return 0;
}
