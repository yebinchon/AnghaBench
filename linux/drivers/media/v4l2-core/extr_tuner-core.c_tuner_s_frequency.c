
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int frequency; int type; } ;
struct tuner {int dummy; } ;


 int set_freq (struct tuner*,int ) ;
 scalar_t__ set_mode (struct tuner*,int ) ;
 struct tuner* to_tuner (struct v4l2_subdev*) ;

__attribute__((used)) static int tuner_s_frequency(struct v4l2_subdev *sd, const struct v4l2_frequency *f)
{
 struct tuner *t = to_tuner(sd);

 if (set_mode(t, f->type) == 0)
  set_freq(t, f->frequency);
 return 0;
}
