
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ half_step; } ;
struct qm1d1b0004_state {int i2c; TYPE_1__ cfg; } ;
struct dvb_frontend {struct qm1d1b0004_state* tuner_priv; } ;


 int i2c_master_send (int ,int*,int) ;

__attribute__((used)) static int qm1d1b0004_init(struct dvb_frontend *fe)
{
 struct qm1d1b0004_state *state;
 u8 buf[2] = {0xf8, 0x04};

 state = fe->tuner_priv;
 if (state->cfg.half_step)
  buf[0] |= 0x01;

 return i2c_master_send(state->i2c, buf, 2);
}
