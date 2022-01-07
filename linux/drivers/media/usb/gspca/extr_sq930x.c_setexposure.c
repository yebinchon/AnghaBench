
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sensor_s {int i2c_addr; int i2c_dum; } ;
struct sd {int sensor; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;




 int SQ930_CTRL_SET_EXPOSURE ;
 int reg_wb (struct gspca_dev*,int,int ,int*,int) ;
 struct sensor_s* sensor_tb ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev, s32 expo, s32 gain)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i, integclks, intstartclk, frameclks, min_frclk;
 const struct sensor_s *sensor;
 u16 cmd;
 u8 buf[15];

 integclks = expo;
 i = 0;
 cmd = SQ930_CTRL_SET_EXPOSURE;

 switch (sd->sensor) {
 case 129:
 case 128:
  min_frclk = sd->sensor == 129 ? 0x210 : 0x26f;
  if (integclks >= min_frclk) {
   intstartclk = 0;
   frameclks = integclks;
  } else {
   intstartclk = min_frclk - integclks;
   frameclks = min_frclk;
  }
  buf[i++] = intstartclk >> 8;
  buf[i++] = intstartclk;
  buf[i++] = frameclks >> 8;
  buf[i++] = frameclks;
  buf[i++] = gain;
  break;
 default:


  cmd |= 0x0100;
  sensor = &sensor_tb[sd->sensor];
  buf[i++] = sensor->i2c_addr;
  buf[i++] = 0x08;
  buf[i++] = 0x09;
  buf[i++] = integclks >> 8;
  buf[i++] = sensor->i2c_dum;
  buf[i++] = integclks;
  buf[i++] = 0x35;
  buf[i++] = 0x00;
  buf[i++] = sensor->i2c_dum;
  buf[i++] = 0x80 + gain / 2;
  buf[i++] = 0x00;
  buf[i++] = 0x00;
  buf[i++] = 0x00;
  buf[i++] = 0x00;
  buf[i++] = 0x83;
  break;
 }
 reg_wb(gspca_dev, cmd, 0, buf, i);
}
