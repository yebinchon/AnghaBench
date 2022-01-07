
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EFAULT ;
 int pr_err (char*) ;

__attribute__((used)) static int ena_com_update_nonadaptive_moderation_interval(u32 coalesce_usecs,
         u32 intr_delay_resolution,
         u32 *intr_moder_interval)
{
 if (!intr_delay_resolution) {
  pr_err("Illegal interrupt delay granularity value\n");
  return -EFAULT;
 }

 *intr_moder_interval = coalesce_usecs / intr_delay_resolution;

 return 0;
}
