
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_map {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static void fastrpc_map_get(struct fastrpc_map *map)
{
 if (map)
  kref_get(&map->refcount);
}
