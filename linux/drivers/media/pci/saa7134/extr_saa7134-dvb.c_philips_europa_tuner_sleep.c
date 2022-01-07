
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct saa7134_dev {int i2c_adap; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_2__ ops; TYPE_1__* dvb; } ;
typedef int msg ;
struct TYPE_3__ {struct saa7134_dev* priv; } ;


 int EIO ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 scalar_t__ philips_td1316_tuner_sleep (struct dvb_frontend*) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int philips_europa_tuner_sleep(struct dvb_frontend *fe)
{
 struct saa7134_dev *dev = fe->dvb->priv;

 static u8 msg[] = { 0x00, 0x14 };
 struct i2c_msg analog_msg = {.addr = 0x43,.flags = 0,.buf = msg,.len = sizeof(msg) };

 if (philips_td1316_tuner_sleep(fe))
  return -EIO;


 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 i2c_transfer(&dev->i2c_adap, &analog_msg, 1);
 return 0;
}
