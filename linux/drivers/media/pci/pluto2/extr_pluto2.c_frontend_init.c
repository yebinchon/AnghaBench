
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pluto {TYPE_4__* fe; int dvb_adapter; TYPE_1__* pdev; int i2c_adap; } ;
struct TYPE_8__ {int set_params; } ;
struct TYPE_9__ {int (* release ) (TYPE_4__*) ;TYPE_2__ tuner_ops; } ;
struct TYPE_10__ {TYPE_3__ ops; } ;
struct TYPE_7__ {int dev; } ;


 int ENODEV ;
 int dev_err (int *,char*) ;
 int dvb_register_frontend (int *,TYPE_4__*) ;
 int lg_tdtpe001p_tuner_set_params ;
 int pluto2_fe_config ;
 int stub1 (TYPE_4__*) ;
 TYPE_4__* tda10046_attach (int *,int *) ;

__attribute__((used)) static int frontend_init(struct pluto *pluto)
{
 int ret;

 pluto->fe = tda10046_attach(&pluto2_fe_config, &pluto->i2c_adap);
 if (!pluto->fe) {
  dev_err(&pluto->pdev->dev, "could not attach frontend\n");
  return -ENODEV;
 }
 pluto->fe->ops.tuner_ops.set_params = lg_tdtpe001p_tuner_set_params;

 ret = dvb_register_frontend(&pluto->dvb_adapter, pluto->fe);
 if (ret < 0) {
  if (pluto->fe->ops.release)
   pluto->fe->ops.release(pluto->fe);
  return ret;
 }

 return 0;
}
