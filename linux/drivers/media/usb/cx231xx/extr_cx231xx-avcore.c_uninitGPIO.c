
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int dummy; } ;


 int VRT_SET_REGISTER ;
 int Vbi ;
 int cx231xx_capture_start (struct cx231xx*,int ,int ) ;
 int cx231xx_write_ctrl_reg (struct cx231xx*,int ,int,int *,int) ;
 int verve_write_byte (struct cx231xx*,int,int) ;

void uninitGPIO(struct cx231xx *dev)
{
 u8 value[4] = { 0, 0, 0, 0 };

 cx231xx_capture_start(dev, 0, Vbi);
 verve_write_byte(dev, 0x07, 0x14);
 cx231xx_write_ctrl_reg(dev, VRT_SET_REGISTER,
   0x68, value, 4);
}
