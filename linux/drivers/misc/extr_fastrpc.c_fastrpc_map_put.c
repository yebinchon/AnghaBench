
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_map {int refcount; } ;


 int fastrpc_free_map ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void fastrpc_map_put(struct fastrpc_map *map)
{
 if (map)
  kref_put(&map->refcount, fastrpc_free_map);
}
