
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int dummy; } ;
struct CHIPSTATE {int prevmode; int wt; scalar_t__ thread; struct CHIPDESC* desc; } ;
struct CHIPDESC {int (* setaudmode ) (struct CHIPSTATE*,int ) ;} ;


 int V4L2_TUNER_MODE_MONO ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int stub1 (struct CHIPSTATE*,int ) ;
 struct CHIPSTATE* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tvaudio_s_frequency(struct v4l2_subdev *sd, const struct v4l2_frequency *freq)
{
 struct CHIPSTATE *chip = to_state(sd);
 struct CHIPDESC *desc = chip->desc;
 if (chip->thread) {
  desc->setaudmode(chip, V4L2_TUNER_MODE_MONO);
  chip->prevmode = -1;
  mod_timer(&chip->wt, jiffies+msecs_to_jiffies(2000));
 }
 return 0;
}
