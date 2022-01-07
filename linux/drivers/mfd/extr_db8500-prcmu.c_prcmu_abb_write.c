
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int prcmu_abb_write_masked (int ,int ,int *,int *,int ) ;

int prcmu_abb_write(u8 slave, u8 reg, u8 *value, u8 size)
{
 u8 mask = ~0;

 return prcmu_abb_write_masked(slave, reg, value, &mask, size);
}
