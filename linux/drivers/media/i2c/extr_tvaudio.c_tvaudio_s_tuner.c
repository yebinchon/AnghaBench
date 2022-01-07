
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int audmode; } ;
struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {scalar_t__ thread; int audmode; scalar_t__ radio; struct CHIPDESC* desc; } ;
struct CHIPDESC {int (* setaudmode ) (struct CHIPSTATE*,int ) ;} ;


 int EINVAL ;





 int stub1 (struct CHIPSTATE*,int ) ;
 struct CHIPSTATE* to_state (struct v4l2_subdev*) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static int tvaudio_s_tuner(struct v4l2_subdev *sd, const struct v4l2_tuner *vt)
{
 struct CHIPSTATE *chip = to_state(sd);
 struct CHIPDESC *desc = chip->desc;

 if (!desc->setaudmode)
  return 0;
 if (chip->radio)
  return 0;

 switch (vt->audmode) {
 case 129:
 case 128:
 case 132:
 case 130:
 case 131:
  break;
 default:
  return -EINVAL;
 }
 chip->audmode = vt->audmode;

 if (chip->thread)
  wake_up_process(chip->thread);
 else
  desc->setaudmode(chip, vt->audmode);

 return 0;
}
