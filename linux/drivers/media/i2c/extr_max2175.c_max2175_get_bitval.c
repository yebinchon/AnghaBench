
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GENMASK (int,int) ;

__attribute__((used)) static inline u8 max2175_get_bitval(u8 val, u8 msb, u8 lsb)
{
 return (val & GENMASK(msb, lsb)) >> lsb;
}
