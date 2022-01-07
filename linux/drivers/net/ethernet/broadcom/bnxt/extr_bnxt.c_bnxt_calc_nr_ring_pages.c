
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int bnxt_calc_nr_ring_pages(u32 ring_size, int desc_per_pg)
{
 int pages;

 pages = ring_size / desc_per_pg;

 if (!pages)
  return 1;

 pages++;

 while (pages & (pages - 1))
  pages++;

 return pages;
}
