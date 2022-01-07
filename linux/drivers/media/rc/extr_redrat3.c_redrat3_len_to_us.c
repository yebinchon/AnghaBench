
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RR3_CLK_CONV_FACTOR ;

__attribute__((used)) static u32 redrat3_len_to_us(u32 length)
{
 u32 biglen = length * 1000;
 u32 divisor = (RR3_CLK_CONV_FACTOR) / 1000;
 u32 result = (u32) (biglen / divisor);


 return result ? result : 1;
}
