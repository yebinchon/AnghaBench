
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_HVMODE ;
 scalar_t__ cpu_has_feature (int ) ;

__attribute__((used)) static int afu_irq_range_start(void)
{
 if (cpu_has_feature(CPU_FTR_HVMODE))
  return 1;
 return 0;
}
