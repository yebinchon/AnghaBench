
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 unsigned long FCRAM_NUM_PARTITIONS ;
 int fflp_set_partition (struct niu*,int ,int ,int ,int ) ;

__attribute__((used)) static int fflp_disable_all_partitions(struct niu *np)
{
 unsigned long i;

 for (i = 0; i < FCRAM_NUM_PARTITIONS; i++) {
  int err = fflp_set_partition(np, 0, 0, 0, 0);
  if (err)
   return err;
 }
 return 0;
}
