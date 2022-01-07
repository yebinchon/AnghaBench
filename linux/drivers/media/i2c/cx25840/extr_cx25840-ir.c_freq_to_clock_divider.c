
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CX25840_IR_REFCLK_FREQ ;
 int DIV_ROUND_CLOSEST (int ,unsigned int) ;
 int count_to_clock_divider (int ) ;

__attribute__((used)) static inline u16 freq_to_clock_divider(unsigned int freq,
     unsigned int rollovers)
{
 return count_to_clock_divider(
     DIV_ROUND_CLOSEST(CX25840_IR_REFCLK_FREQ, freq * rollovers));
}
