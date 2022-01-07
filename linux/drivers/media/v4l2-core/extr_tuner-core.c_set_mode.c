
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct analog_demod_ops {int (* standby ) (TYPE_2__*) ;} ;
struct TYPE_3__ {struct analog_demod_ops analog_ops; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct tuner {int mode; int standby; TYPE_2__ fe; } ;
typedef enum v4l2_tuner_type { ____Placeholder_v4l2_tuner_type } v4l2_tuner_type ;


 int EINVAL ;
 int check_mode (struct tuner*,int) ;
 int dprintk (char*,int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int set_mode(struct tuner *t, enum v4l2_tuner_type mode)
{
 struct analog_demod_ops *analog_ops = &t->fe.ops.analog_ops;

 if (mode != t->mode) {
  if (check_mode(t, mode) == -EINVAL) {
   dprintk("Tuner doesn't support mode %d. Putting tuner to sleep\n",
      mode);
   t->standby = 1;
   if (analog_ops->standby)
    analog_ops->standby(&t->fe);
   return -EINVAL;
  }
  t->mode = mode;
  dprintk("Changing to mode %d\n", mode);
 }
 return 0;
}
