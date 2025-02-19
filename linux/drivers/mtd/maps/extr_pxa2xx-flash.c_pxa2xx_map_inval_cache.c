
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {scalar_t__ cached; } ;
typedef unsigned long ssize_t ;


 int CACHELINESIZE ;

__attribute__((used)) static void pxa2xx_map_inval_cache(struct map_info *map, unsigned long from,
          ssize_t len)
{
 unsigned long start = (unsigned long)map->cached + from;
 unsigned long end = start + len;

 start &= ~(CACHELINESIZE - 1);
 while (start < end) {

  asm volatile ("mcr p15, 0, %0, c7, c6, 1" : : "r" (start));
  start += CACHELINESIZE;
 }
}
