
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cpu_relax () ;
 int ioread32 (void*) ;
 int pr_err (char*) ;

__attribute__((used)) static void pch_gbe_wait_clr_bit(void *reg, u32 bit)
{
 u32 tmp;


 tmp = 1000;
 while ((ioread32(reg) & bit) && --tmp)
  cpu_relax();
 if (!tmp)
  pr_err("Error: busy bit is not cleared\n");
}
