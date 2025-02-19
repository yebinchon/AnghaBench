
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct analog_demod_ops {int (* set_params ) (TYPE_2__*,struct analog_parameters*) ;} ;
struct TYPE_3__ {struct analog_demod_ops analog_ops; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct tuner {scalar_t__ type; unsigned int tv_freq; int standby; TYPE_2__ fe; int std; int audmode; int mode; } ;
struct i2c_client {int dummy; } ;
struct analog_parameters {unsigned int frequency; int std; int audmode; int mode; } ;


 scalar_t__ UNSET ;
 int dprintk (char*,unsigned int,unsigned int,...) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int pr_warn (char*) ;
 int stub1 (TYPE_2__*,struct analog_parameters*) ;
 struct tuner* to_tuner (int ) ;
 int* tv_range ;

__attribute__((used)) static void set_tv_freq(struct i2c_client *c, unsigned int freq)
{
 struct tuner *t = to_tuner(i2c_get_clientdata(c));
 struct analog_demod_ops *analog_ops = &t->fe.ops.analog_ops;

 struct analog_parameters params = {
  .mode = t->mode,
  .audmode = t->audmode,
  .std = t->std
 };

 if (t->type == UNSET) {
  pr_warn("tuner type not set\n");
  return;
 }
 if (((void*)0) == analog_ops->set_params) {
  pr_warn("Tuner has no way to set tv freq\n");
  return;
 }
 if (freq < tv_range[0] * 16 || freq > tv_range[1] * 16) {
  dprintk("TV freq (%d.%02d) out of range (%d-%d)\n",
      freq / 16, freq % 16 * 100 / 16, tv_range[0],
      tv_range[1]);


  if (freq < tv_range[0] * 16)
   freq = tv_range[0] * 16;
  else
   freq = tv_range[1] * 16;
 }
 params.frequency = freq;
 dprintk("tv freq set to %d.%02d\n",
   freq / 16, freq % 16 * 100 / 16);
 t->tv_freq = freq;
 t->standby = 0;

 analog_ops->set_params(&t->fe, &params);
}
