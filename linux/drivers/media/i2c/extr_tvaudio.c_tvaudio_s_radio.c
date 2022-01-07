
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {int radio; } ;


 struct CHIPSTATE* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tvaudio_s_radio(struct v4l2_subdev *sd)
{
 struct CHIPSTATE *chip = to_state(sd);

 chip->radio = 1;

 return 0;
}
