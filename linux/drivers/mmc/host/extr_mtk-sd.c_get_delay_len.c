
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PAD_DELAY_MAX ;
 scalar_t__ test_delay_bit (int,int) ;

__attribute__((used)) static int get_delay_len(u32 delay, u32 start_bit)
{
 int i;

 for (i = 0; i < (PAD_DELAY_MAX - start_bit); i++) {
  if (test_delay_bit(delay, start_bit + i) == 0)
   return i;
 }
 return PAD_DELAY_MAX - start_bit;
}
