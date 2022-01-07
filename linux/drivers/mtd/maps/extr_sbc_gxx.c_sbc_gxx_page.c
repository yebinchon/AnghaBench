
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;


 unsigned long DEVICE_ENABLE ;
 int PAGE_IO ;
 unsigned long WINDOW_SHIFT ;
 int outw (unsigned long,int ) ;
 unsigned long page_in_window ;

__attribute__((used)) static inline void sbc_gxx_page(struct map_info *map, unsigned long ofs)
{
 unsigned long page = ofs >> WINDOW_SHIFT;

 if( page!=page_in_window ) {
  outw( page | DEVICE_ENABLE, PAGE_IO );
  page_in_window = page;
 }
}
