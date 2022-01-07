
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct cx231xx {int dummy; } ;


 int cx231xx_read_i2c_data (struct cx231xx*,int ,int ,int,int *,int) ;
 int cx231xx_write_i2c_data (struct cx231xx*,int ,int ,int,int ,int) ;

int cx231xx_read_modify_write_i2c_dword(struct cx231xx *dev, u8 dev_addr,
     u16 saddr, u32 mask, u32 value)
{
 u32 temp;
 int status = 0;

 status = cx231xx_read_i2c_data(dev, dev_addr, saddr, 2, &temp, 4);

 if (status < 0)
  return status;

 temp &= ~mask;
 temp |= value;

 status = cx231xx_write_i2c_data(dev, dev_addr, saddr, 2, temp, 4);

 return status;
}
