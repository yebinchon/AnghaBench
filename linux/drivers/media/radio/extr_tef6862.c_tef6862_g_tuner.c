
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int signal; int audmode; int capability; int rxsubchans; int rangehigh; int rangelow; int type; int name; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int TEF6862_HI_FREQ ;
 int TEF6862_LO_FREQ ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int strscpy (int ,char*,int) ;
 int tef6862_sigstr (int ) ;
 int v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tef6862_g_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *v)
{
 if (v->index > 0)
  return -EINVAL;


 strscpy(v->name, "FM", sizeof(v->name));
 v->type = V4L2_TUNER_RADIO;
 v->rangelow = TEF6862_LO_FREQ;
 v->rangehigh = TEF6862_HI_FREQ;
 v->rxsubchans = V4L2_TUNER_SUB_MONO;
 v->capability = V4L2_TUNER_CAP_LOW;
 v->audmode = V4L2_TUNER_MODE_STEREO;
 v->signal = tef6862_sigstr(v4l2_get_subdevdata(sd));

 return 0;
}
