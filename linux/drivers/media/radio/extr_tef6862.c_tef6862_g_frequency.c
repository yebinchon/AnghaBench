
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {scalar_t__ tuner; int frequency; int type; } ;
struct tef6862_state {int freq; } ;


 int EINVAL ;
 int V4L2_TUNER_RADIO ;
 struct tef6862_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tef6862_g_frequency(struct v4l2_subdev *sd, struct v4l2_frequency *f)
{
 struct tef6862_state *state = to_state(sd);

 if (f->tuner != 0)
  return -EINVAL;
 f->type = V4L2_TUNER_RADIO;
 f->frequency = state->freq;
 return 0;
}
