
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scif_pinned_pages_t ;


 int __scif_pin_pages (void*,size_t,int*,int,int *) ;

int scif_pin_pages(void *addr, size_t len, int prot,
     int map_flags, scif_pinned_pages_t *pages)
{
 return __scif_pin_pages(addr, len, &prot, map_flags, pages);
}
