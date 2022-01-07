
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ prcmu_base ;
 int readl (scalar_t__) ;

u32 db8500_prcmu_read(unsigned int reg)
{
 return readl(prcmu_base + reg);
}
