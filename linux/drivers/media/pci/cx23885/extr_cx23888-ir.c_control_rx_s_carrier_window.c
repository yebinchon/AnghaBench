
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int CNTRL_WIN ;
 int CNTRL_WIN_3_3 ;
 int CNTRL_WIN_3_4 ;
 int CNTRL_WIN_4_3 ;
 int CX23888_IR_CNTRL_REG ;
 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int cx23888_ir_and_or4 (struct cx23885_dev*,int ,int ,int ) ;

__attribute__((used)) static void control_rx_s_carrier_window(struct cx23885_dev *dev,
     unsigned int carrier,
     unsigned int *carrier_range_low,
     unsigned int *carrier_range_high)
{
 u32 v;
 unsigned int c16 = carrier * 16;

 if (*carrier_range_low < DIV_ROUND_CLOSEST(c16, 16 + 3)) {
  v = CNTRL_WIN_3_4;
  *carrier_range_low = DIV_ROUND_CLOSEST(c16, 16 + 4);
 } else {
  v = CNTRL_WIN_3_3;
  *carrier_range_low = DIV_ROUND_CLOSEST(c16, 16 + 3);
 }

 if (*carrier_range_high > DIV_ROUND_CLOSEST(c16, 16 - 3)) {
  v |= CNTRL_WIN_4_3;
  *carrier_range_high = DIV_ROUND_CLOSEST(c16, 16 - 4);
 } else {
  v |= CNTRL_WIN_3_3;
  *carrier_range_high = DIV_ROUND_CLOSEST(c16, 16 - 3);
 }
 cx23888_ir_and_or4(dev, CX23888_IR_CNTRL_REG, ~CNTRL_WIN, v);
}
