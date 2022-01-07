
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int dummy; } ;


 int wm8775_set_audio (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int wm8775_s_frequency(struct v4l2_subdev *sd, const struct v4l2_frequency *freq)
{
 wm8775_set_audio(sd, 0);
 return 0;
}
