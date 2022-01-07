
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct tuner {int std; } ;


 int V4L2_TUNER_ANALOG_TV ;
 int dprintk (char*,int ,int ) ;
 int set_freq (struct tuner*,int ) ;
 scalar_t__ set_mode (struct tuner*,int ) ;
 struct tuner* to_tuner (struct v4l2_subdev*) ;
 int tuner_fixup_std (struct tuner*,int ) ;

__attribute__((used)) static int tuner_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct tuner *t = to_tuner(sd);

 if (set_mode(t, V4L2_TUNER_ANALOG_TV))
  return 0;

 t->std = tuner_fixup_std(t, std);
 if (t->std != std)
  dprintk("Fixup standard %llx to %llx\n", std, t->std);
 set_freq(t, 0);
 return 0;
}
