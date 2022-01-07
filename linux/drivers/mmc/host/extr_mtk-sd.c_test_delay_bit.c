
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PAD_DELAY_MAX ;

__attribute__((used)) static u32 test_delay_bit(u32 delay, u32 bit)
{
 bit %= PAD_DELAY_MAX;
 return delay & (1 << bit);
}
