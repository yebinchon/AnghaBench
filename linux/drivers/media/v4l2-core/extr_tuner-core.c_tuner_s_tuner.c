
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ audmode; int type; } ;
struct v4l2_subdev {int dummy; } ;
struct tuner {scalar_t__ mode; scalar_t__ audmode; } ;


 scalar_t__ V4L2_TUNER_MODE_MONO ;
 scalar_t__ V4L2_TUNER_MODE_STEREO ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int set_freq (struct tuner*,int ) ;
 scalar_t__ set_mode (struct tuner*,int ) ;
 struct tuner* to_tuner (struct v4l2_subdev*) ;

__attribute__((used)) static int tuner_s_tuner(struct v4l2_subdev *sd, const struct v4l2_tuner *vt)
{
 struct tuner *t = to_tuner(sd);

 if (set_mode(t, vt->type))
  return 0;

 if (t->mode == V4L2_TUNER_RADIO) {
  t->audmode = vt->audmode;






  if (t->audmode != V4L2_TUNER_MODE_MONO &&
      t->audmode != V4L2_TUNER_MODE_STEREO)
   t->audmode = V4L2_TUNER_MODE_STEREO;
 }
 set_freq(t, 0);

 return 0;
}
