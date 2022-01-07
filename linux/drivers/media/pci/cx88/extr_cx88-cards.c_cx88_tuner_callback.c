
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_algo_bit_data {struct cx88_core* data; } ;
struct TYPE_2__ {int tuner_type; } ;
struct cx88_core {TYPE_1__ board; } ;


 int DVB_FRONTEND_COMPONENT_TUNER ;
 int EINVAL ;



 int cx88_xc2028_tuner_callback (struct cx88_core*,int,int) ;
 int cx88_xc4000_tuner_callback (struct cx88_core*,int,int) ;
 int cx88_xc5000_tuner_callback (struct cx88_core*,int,int) ;
 int dprintk (int,char*) ;
 int pr_err (char*,...) ;

int cx88_tuner_callback(void *priv, int component, int command, int arg)
{
 struct i2c_algo_bit_data *i2c_algo = priv;
 struct cx88_core *core;

 if (!i2c_algo) {
  pr_err("Error - i2c private data undefined.\n");
  return -EINVAL;
 }

 core = i2c_algo->data;

 if (!core) {
  pr_err("Error - device struct undefined.\n");
  return -EINVAL;
 }

 if (component != DVB_FRONTEND_COMPONENT_TUNER)
  return -EINVAL;

 switch (core->board.tuner_type) {
 case 130:
  dprintk(1, "Calling XC2028/3028 callback\n");
  return cx88_xc2028_tuner_callback(core, command, arg);
 case 129:
  dprintk(1, "Calling XC4000 callback\n");
  return cx88_xc4000_tuner_callback(core, command, arg);
 case 128:
  dprintk(1, "Calling XC5000 callback\n");
  return cx88_xc5000_tuner_callback(core, command, arg);
 }
 pr_err("Error: Calling callback for tuner %d\n",
        core->board.tuner_type);
 return -EINVAL;
}
