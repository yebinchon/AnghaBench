
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpmc_cs_delete_mem (int) ;
 int gpmc_cs_mem_enabled (int) ;
 int gpmc_cs_num ;

__attribute__((used)) static void gpmc_mem_exit(void)
{
 int cs;

 for (cs = 0; cs < gpmc_cs_num; cs++) {
  if (!gpmc_cs_mem_enabled(cs))
   continue;
  gpmc_cs_delete_mem(cs);
 }

}
