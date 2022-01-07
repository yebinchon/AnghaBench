
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ISL29003_ADC_ENABLED ;
 int ISL29003_ADC_PD ;
 int ISL29003_REG_COMMAND ;
 int __isl29003_write_reg (struct i2c_client*,int ,int,int ,int) ;

__attribute__((used)) static int isl29003_set_power_state(struct i2c_client *client, int state)
{
 return __isl29003_write_reg(client, ISL29003_REG_COMMAND,
    ISL29003_ADC_ENABLED | ISL29003_ADC_PD, 0,
    state ? ISL29003_ADC_ENABLED : ISL29003_ADC_PD);
}
