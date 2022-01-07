
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tuner {int dummy; } ;
struct dvb_tuner_ops {int (* set_analog_params ) (struct dvb_frontend*,struct analog_parameters*) ;} ;
struct TYPE_2__ {struct dvb_tuner_ops tuner_ops; } ;
struct dvb_frontend {struct tuner* analog_demod_priv; TYPE_1__ ops; } ;
struct analog_parameters {int dummy; } ;


 int pr_warn (char*) ;
 int stub1 (struct dvb_frontend*,struct analog_parameters*) ;

__attribute__((used)) static void fe_set_params(struct dvb_frontend *fe,
     struct analog_parameters *params)
{
 struct dvb_tuner_ops *fe_tuner_ops = &fe->ops.tuner_ops;
 struct tuner *t = fe->analog_demod_priv;

 if (((void*)0) == fe_tuner_ops->set_analog_params) {
  pr_warn("Tuner frontend module has no way to set freq\n");
  return;
 }
 fe_tuner_ops->set_analog_params(fe, params);
}
