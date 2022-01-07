
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;


 int CX25840_IR_CDUTY_REG ;
 unsigned int DIV_ROUND_CLOSEST (int,int) ;
 int cx25840_write4 (struct i2c_client*,int ,int) ;

__attribute__((used)) static unsigned int cduty_tx_s_duty_cycle(struct i2c_client *c,
       unsigned int duty_cycle)
{
 u32 n;
 n = DIV_ROUND_CLOSEST(duty_cycle * 100, 625);
 if (n != 0)
  n--;
 if (n > 15)
  n = 15;
 cx25840_write4(c, CX25840_IR_CDUTY_REG, n);
 return DIV_ROUND_CLOSEST((n + 1) * 100, 16);
}
