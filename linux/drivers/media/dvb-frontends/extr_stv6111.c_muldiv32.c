
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int do_div (int,scalar_t__) ;

__attribute__((used)) static inline u32 muldiv32(u32 a, u32 b, u32 c)
{
 u64 tmp64;

 tmp64 = (u64)a * (u64)b;
 do_div(tmp64, c);

 return (u32)tmp64;
}
