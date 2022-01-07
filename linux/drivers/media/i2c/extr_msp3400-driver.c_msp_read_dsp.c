
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int I2C_MSP_DSP ;
 int msp_read (struct i2c_client*,int ,int) ;

int msp_read_dsp(struct i2c_client *client, int addr)
{
 return msp_read(client, I2C_MSP_DSP, addr);
}
