
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int tuner_buf ;
struct ttusb {int i2c_adap; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dtv_frontend_properties {int frequency; } ;
struct dvb_frontend {TYPE_2__ ops; TYPE_1__* dvb; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_3__ {scalar_t__ priv; } ;


 int EINVAL ;
 int EIO ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int msleep (int) ;
 int printk (char*) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int dvbc_philips_tdm1316l_tuner_set_params(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct ttusb *ttusb = (struct ttusb *) fe->dvb->priv;
 u8 tuner_buf[5];
 struct i2c_msg tuner_msg = {.addr = 0x60,
        .flags = 0,
        .buf = tuner_buf,
        .len = sizeof(tuner_buf) };
 int tuner_frequency = 0;
 u8 band, cp, filter;


 tuner_frequency = p->frequency;
 if (tuner_frequency < 87000000) {return -EINVAL;}
 else if (tuner_frequency < 130000000) {cp = 3; band = 1;}
 else if (tuner_frequency < 160000000) {cp = 5; band = 1;}
 else if (tuner_frequency < 200000000) {cp = 6; band = 1;}
 else if (tuner_frequency < 290000000) {cp = 3; band = 2;}
 else if (tuner_frequency < 420000000) {cp = 5; band = 2;}
 else if (tuner_frequency < 480000000) {cp = 6; band = 2;}
 else if (tuner_frequency < 620000000) {cp = 3; band = 4;}
 else if (tuner_frequency < 830000000) {cp = 5; band = 4;}
 else if (tuner_frequency < 895000000) {cp = 7; band = 4;}
 else {return -EINVAL;}


 filter = 1;



 tuner_frequency = ((p->frequency + 36125000) / 62500);


 tuner_buf[0] = tuner_frequency >> 8;
 tuner_buf[1] = tuner_frequency & 0xff;
 tuner_buf[2] = 0xc8;
 tuner_buf[3] = (cp << 5) | (filter << 3) | band;
 tuner_buf[4] = 0x80;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(&ttusb->i2c_adap, &tuner_msg, 1) != 1) {
  printk("dvb-ttusb-budget: dvbc_philips_tdm1316l_pll_set Error 1\n");
  return -EIO;
 }

 msleep(50);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(&ttusb->i2c_adap, &tuner_msg, 1) != 1) {
  printk("dvb-ttusb-budget: dvbc_philips_tdm1316l_pll_set Error 2\n");
  return -EIO;
 }

 msleep(1);

 return 0;
}
