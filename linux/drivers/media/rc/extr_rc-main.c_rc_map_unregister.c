
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_map_list {int list; } ;


 int list_del (int *) ;
 int rc_map_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rc_map_unregister(struct rc_map_list *map)
{
 spin_lock(&rc_map_lock);
 list_del(&map->list);
 spin_unlock(&rc_map_lock);
}
