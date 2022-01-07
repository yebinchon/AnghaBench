
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int I2C_MSP_DSP ;
 int msp_write (struct i2c_client*,int ,int,int) ;

int msp_write_dsp(struct i2c_client *client, int addr, int val)
{
 return msp_write(client, I2C_MSP_DSP, addr, val);
}
