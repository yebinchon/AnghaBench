
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CX23888_IR_REFCLK_FREQ ;
 unsigned int DIV_ROUND_CLOSEST (int ,unsigned int) ;

__attribute__((used)) static inline unsigned int clock_divider_to_carrier_freq(unsigned int divider)
{
 return DIV_ROUND_CLOSEST(CX23888_IR_REFCLK_FREQ, (divider + 1) * 16);
}
