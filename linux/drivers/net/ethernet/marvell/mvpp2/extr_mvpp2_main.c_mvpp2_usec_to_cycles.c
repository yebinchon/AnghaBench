
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;


 scalar_t__ U32_MAX ;
 int USEC_PER_SEC ;
 int do_div (scalar_t__,int ) ;

__attribute__((used)) static u32 mvpp2_usec_to_cycles(u32 usec, unsigned long clk_hz)
{
 u64 tmp = (u64)clk_hz * usec;

 do_div(tmp, USEC_PER_SEC);

 return tmp > U32_MAX ? U32_MAX : tmp;
}
