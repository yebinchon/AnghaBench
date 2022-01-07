
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_map {int * scan; int * name; scalar_t__ size; } ;


 int kfree (int *) ;

__attribute__((used)) static void ir_free_table(struct rc_map *rc_map)
{
 rc_map->size = 0;
 kfree(rc_map->name);
 rc_map->name = ((void*)0);
 kfree(rc_map->scan);
 rc_map->scan = ((void*)0);
}
