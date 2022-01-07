
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct analog_demod_ops {int (* tuner_status ) (TYPE_2__*) ;} ;
struct TYPE_3__ {struct analog_demod_ops analog_ops; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct tuner {TYPE_2__ fe; } ;


 int stub1 (TYPE_2__*) ;
 struct tuner* to_tuner (struct v4l2_subdev*) ;

__attribute__((used)) static int tuner_log_status(struct v4l2_subdev *sd)
{
 struct tuner *t = to_tuner(sd);
 struct analog_demod_ops *analog_ops = &t->fe.ops.analog_ops;

 if (analog_ops->tuner_status)
  analog_ops->tuner_status(&t->fe);
 return 0;
}
