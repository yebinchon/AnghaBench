
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct intel_spi {int pr_num; scalar_t__ pregs; } ;


 scalar_t__ PR (int) ;
 unsigned int PR_BASE_MASK ;
 unsigned int PR_LIMIT_MASK ;
 unsigned int PR_LIMIT_SHIFT ;
 unsigned int PR_RPE ;
 unsigned int PR_WPE ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static bool intel_spi_is_protected(const struct intel_spi *ispi,
       unsigned int base, unsigned int limit)
{
 int i;

 for (i = 0; i < ispi->pr_num; i++) {
  u32 pr_base, pr_limit, pr_value;

  pr_value = readl(ispi->pregs + PR(i));
  if (!(pr_value & (PR_WPE | PR_RPE)))
   continue;

  pr_limit = (pr_value & PR_LIMIT_MASK) >> PR_LIMIT_SHIFT;
  pr_base = pr_value & PR_BASE_MASK;

  if (pr_base >= base && pr_limit <= limit)
   return 1;
 }

 return 0;
}
