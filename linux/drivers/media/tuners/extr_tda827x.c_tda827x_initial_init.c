
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* init ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; } ;


 int stub1 (struct dvb_frontend*) ;
 int tda827x_probe_version (struct dvb_frontend*) ;

__attribute__((used)) static int tda827x_initial_init(struct dvb_frontend *fe)
{
 int ret;
 ret = tda827x_probe_version(fe);
 if (ret)
  return ret;
 return fe->ops.tuner_ops.init(fe);
}
