
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct dvb_tuner_ops {int (* set_analog_params ) (TYPE_3__*,struct analog_parameters*) ;} ;
struct cx231xx {TYPE_2__* dvb; int norm; } ;
struct analog_parameters {scalar_t__ mode; int std; int frequency; } ;
struct TYPE_4__ {struct dvb_tuner_ops tuner_ops; } ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct TYPE_5__ {TYPE_3__** frontend; } ;


 int stub1 (TYPE_3__*,struct analog_parameters*) ;

int cx231xx_set_analog_freq(struct cx231xx *dev, u32 freq)
{
 if (dev->dvb && dev->dvb->frontend[0]) {

  struct dvb_tuner_ops *dops = &dev->dvb->frontend[0]->ops.tuner_ops;

  if (dops->set_analog_params != ((void*)0)) {
   struct analog_parameters params;

   params.frequency = freq;
   params.std = dev->norm;
   params.mode = 0;



   dops->set_analog_params(dev->dvb->frontend[0], &params);
  }

 }

 return 0;
}
