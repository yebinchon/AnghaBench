
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int dummy; } ;


 int TS1_CFG_REG ;
 int TS_MODE_REG ;
 int VRT_SET_REGISTER ;
 int cx231xx_write_ctrl_reg (struct cx231xx*,int ,int ,int*,int) ;

void cx231xx_stop_TS1(struct cx231xx *dev)
{
 u8 val[4] = { 0, 0, 0, 0 };

 val[0] = 0x00;
 val[1] = 0x03;
 val[2] = 0x00;
 val[3] = 0x00;
 cx231xx_write_ctrl_reg(dev, VRT_SET_REGISTER,
   TS_MODE_REG, val, 4);

 val[0] = 0x00;
 val[1] = 0x70;
 val[2] = 0x04;
 val[3] = 0x00;
 cx231xx_write_ctrl_reg(dev, VRT_SET_REGISTER,
   TS1_CFG_REG, val, 4);
}
