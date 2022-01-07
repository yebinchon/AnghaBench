
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static bool valid_l4_mask(u32 mask)
{
 u16 hi, lo;




 hi = (mask >> 16) & 0xFFFF;
 lo = mask & 0xFFFF;

 return hi && lo ? 0 : 1;
}
