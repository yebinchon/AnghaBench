
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EHEA_BUSMAP_ADD_SECT ;
 unsigned long EHEA_HUGEPAGE_SIZE ;
 unsigned long EHEA_SECTSIZE ;
 unsigned long PAGE_SIZE ;
 scalar_t__ ehea_is_hugepage (unsigned long) ;
 int ehea_update_busmap (unsigned long,unsigned long,int ) ;

__attribute__((used)) static int ehea_create_busmap_callback(unsigned long initial_pfn,
           unsigned long total_nr_pages, void *arg)
{
 int ret;
 unsigned long pfn, start_pfn, end_pfn, nr_pages;

 if ((total_nr_pages * PAGE_SIZE) < EHEA_HUGEPAGE_SIZE)
  return ehea_update_busmap(initial_pfn, total_nr_pages,
       EHEA_BUSMAP_ADD_SECT);


 start_pfn = initial_pfn;
 end_pfn = initial_pfn + total_nr_pages;
 pfn = start_pfn;

 while (pfn < end_pfn) {
  if (ehea_is_hugepage(pfn)) {

   nr_pages = pfn - start_pfn;
   ret = ehea_update_busmap(start_pfn, nr_pages,
       EHEA_BUSMAP_ADD_SECT);
   if (ret)
    return ret;


   pfn += (EHEA_HUGEPAGE_SIZE / PAGE_SIZE);
   start_pfn = pfn;
  } else
   pfn += (EHEA_SECTSIZE / PAGE_SIZE);
 }


 nr_pages = pfn - start_pfn;
 return ehea_update_busmap(start_pfn, nr_pages, EHEA_BUSMAP_ADD_SECT);
}
