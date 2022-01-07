
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ mchip_read (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static inline int mchip_delay(u32 reg, u32 v)
{
 int n = 10;
 while (--n && mchip_read(reg) != v)
  udelay(1);
 return n;
}
