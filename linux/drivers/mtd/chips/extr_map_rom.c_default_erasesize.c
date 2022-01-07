
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {unsigned int size; int device_node; } ;
typedef int __be32 ;


 unsigned int be32_to_cpu (int const) ;
 int * of_get_property (int ,char*,int *) ;

__attribute__((used)) static unsigned int default_erasesize(struct map_info *map)
{
 const __be32 *erase_size = ((void*)0);

 erase_size = of_get_property(map->device_node, "erase-size", ((void*)0));

 return !erase_size ? map->size : be32_to_cpu(*erase_size);
}
