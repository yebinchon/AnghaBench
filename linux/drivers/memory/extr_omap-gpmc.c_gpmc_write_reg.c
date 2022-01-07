
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ gpmc_base ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void gpmc_write_reg(int idx, u32 val)
{
 writel_relaxed(val, gpmc_base + idx);
}
