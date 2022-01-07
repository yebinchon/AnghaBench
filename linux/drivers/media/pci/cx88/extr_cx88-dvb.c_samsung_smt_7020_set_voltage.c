
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct cx88_core {int i2c_adap; } ;
struct cx8802_dev {struct cx88_core* core; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
typedef int data ;
struct TYPE_2__ {struct cx8802_dev* priv; } ;


 int EINVAL ;
 int EIO ;
 int ISL6421_EN1 ;
 int ISL6421_LLC1 ;
 int ISL6421_VSEL1 ;
 int MO_GP0_IO ;



 int cx_clear (int ,int) ;
 int cx_set (int ,int) ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static int samsung_smt_7020_set_voltage(struct dvb_frontend *fe,
     enum fe_sec_voltage voltage)
{
 struct cx8802_dev *dev = fe->dvb->priv;
 struct cx88_core *core = dev->core;

 u8 data;
 struct i2c_msg msg = {
  .addr = 8,
  .flags = 0,
  .buf = &data,
  .len = sizeof(data) };

 cx_set(MO_GP0_IO, 0x8000);

 switch (voltage) {
 case 128:
  break;
 case 130:
  data = ISL6421_EN1 | ISL6421_LLC1;
  cx_clear(MO_GP0_IO, 0x80);
  break;
 case 129:
  data = ISL6421_EN1 | ISL6421_LLC1 | ISL6421_VSEL1;
  cx_clear(MO_GP0_IO, 0x80);
  break;
 default:
  return -EINVAL;
 }

 return (i2c_transfer(&dev->core->i2c_adap, &msg, 1) == 1) ? 0 : -EIO;
}
