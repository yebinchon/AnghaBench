
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct airo_info {int network_free_list; TYPE_1__* networks; int network_list; } ;
struct TYPE_2__ {int list; } ;


 int AIRO_MAX_NETWORK_COUNT ;
 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void airo_networks_initialize(struct airo_info *ai)
{
 int i;

 INIT_LIST_HEAD(&ai->network_free_list);
 INIT_LIST_HEAD(&ai->network_list);
 for (i = 0; i < AIRO_MAX_NETWORK_COUNT; i++)
  list_add_tail(&ai->networks[i].list,
         &ai->network_free_list);
}
