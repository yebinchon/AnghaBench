
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;


 scalar_t__ U32_MAX ;
 scalar_t__ USEC_PER_SEC ;
 int do_div (scalar_t__,unsigned long) ;

__attribute__((used)) static u32 mvpp2_cycles_to_usec(u32 cycles, unsigned long clk_hz)
{
 u64 tmp = (u64)cycles * USEC_PER_SEC;

 do_div(tmp, clk_hz);

 return tmp > U32_MAX ? U32_MAX : tmp;
}
