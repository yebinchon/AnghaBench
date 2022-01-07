
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pluto {int i2c_adap; } ;
struct i2c_msg {int addr; int* buf; int len; scalar_t__ flags; } ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dtv_frontend_properties {int frequency; int bandwidth_hz; } ;
struct dvb_frontend {TYPE_1__ ops; struct dtv_frontend_properties dtv_property_cache; } ;
typedef int buf ;


 int EREMOTEIO ;
 int I2C_ADDR_TUA6034 ;
 int divide (int,int) ;
 struct pluto* frontend_to_pluto (struct dvb_frontend*) ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int lg_tdtpe001p_tuner_set_params(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct pluto *pluto = frontend_to_pluto(fe);
 struct i2c_msg msg;
 int ret;
 u8 buf[4];
 u32 div;






 div = divide(p->frequency * 3, 500000) + 217;
 buf[0] = (div >> 8) & 0x7f;
 buf[1] = (div >> 0) & 0xff;

 if (p->frequency < 611000000)
  buf[2] = 0xb4;
 else if (p->frequency < 811000000)
  buf[2] = 0xbc;
 else
  buf[2] = 0xf4;




 if (p->frequency < 350000000)
  buf[3] = 0x02;
 else
  buf[3] = 0x04;

 if (p->bandwidth_hz == 8000000)
  buf[3] |= 0x08;

 msg.addr = I2C_ADDR_TUA6034 >> 1;
 msg.flags = 0;
 msg.buf = buf;
 msg.len = sizeof(buf);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 ret = i2c_transfer(&pluto->i2c_adap, &msg, 1);
 if (ret < 0)
  return ret;
 else if (ret == 0)
  return -EREMOTEIO;

 return 0;
}
