
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int * release; } ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {int ber; } ;


 int ENODEV ;
 int af9005_fe_refresh_state (struct dvb_frontend*) ;

__attribute__((used)) static int af9005_fe_read_ber(struct dvb_frontend *fe, u32 * ber)
{
 struct af9005_fe_state *state = fe->demodulator_priv;
 if (fe->ops.tuner_ops.release == ((void*)0))
  return -ENODEV;
 af9005_fe_refresh_state(fe);
 *ber = state->ber;
 return 0;
}
