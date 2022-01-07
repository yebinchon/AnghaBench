
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ gpmc_base ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 gpmc_read_reg(int idx)
{
 return readl_relaxed(gpmc_base + idx);
}
