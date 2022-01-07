
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sram_partition {int list; } ;


 int exec_pool_list ;
 int exec_pool_list_mutex ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int sram_add_protect_exec(struct sram_partition *part)
{
 mutex_lock(&exec_pool_list_mutex);
 list_add_tail(&part->list, &exec_pool_list);
 mutex_unlock(&exec_pool_list_mutex);

 return 0;
}
