
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct tda1004x_state {TYPE_3__* config; } ;
struct saa7134_dev {int i2c_adap; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct tda1004x_state* demodulator_priv; TYPE_2__* dvb; } ;
typedef int msg ;
struct TYPE_6__ {int tuner_address; } ;
struct TYPE_5__ {struct saa7134_dev* priv; } ;


 int EIO ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int philips_td1316_tuner_sleep(struct dvb_frontend *fe)
{
 struct saa7134_dev *dev = fe->dvb->priv;
 struct tda1004x_state *state = fe->demodulator_priv;
 u8 addr = state->config->tuner_address;
 static u8 msg[] = { 0x0b, 0xdc, 0x86, 0xa4 };
 struct i2c_msg analog_msg = {.addr = addr,.flags = 0,.buf = msg,.len = sizeof(msg) };


 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(&dev->i2c_adap, &analog_msg, 1) != 1)
  return -EIO;
 return 0;
}
