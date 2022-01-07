
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tuner {int dummy; } ;


 int V4L2_TUNER_RADIO ;
 int set_freq (struct tuner*,int ) ;
 scalar_t__ set_mode (struct tuner*,int ) ;
 struct tuner* to_tuner (struct v4l2_subdev*) ;

__attribute__((used)) static int tuner_s_radio(struct v4l2_subdev *sd)
{
 struct tuner *t = to_tuner(sd);

 if (set_mode(t, V4L2_TUNER_RADIO) == 0)
  set_freq(t, 0);
 return 0;
}
