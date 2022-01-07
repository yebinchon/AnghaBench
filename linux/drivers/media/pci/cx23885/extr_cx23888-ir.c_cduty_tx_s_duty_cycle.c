
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int CX23888_IR_CDUTY_REG ;
 unsigned int DIV_ROUND_CLOSEST (int,int) ;
 int cx23888_ir_write4 (struct cx23885_dev*,int ,int) ;

__attribute__((used)) static unsigned int cduty_tx_s_duty_cycle(struct cx23885_dev *dev,
       unsigned int duty_cycle)
{
 u32 n;
 n = DIV_ROUND_CLOSEST(duty_cycle * 100, 625);
 if (n != 0)
  n--;
 if (n > 15)
  n = 15;
 cx23888_ir_write4(dev, CX23888_IR_CDUTY_REG, n);
 return DIV_ROUND_CLOSEST((n + 1) * 100, 16);
}
