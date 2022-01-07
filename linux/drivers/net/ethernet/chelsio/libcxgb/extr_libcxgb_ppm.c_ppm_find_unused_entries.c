
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 unsigned long bitmap_find_next_zero_area (unsigned long*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int bitmap_set (unsigned long*,unsigned long,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ppm_find_unused_entries(unsigned long *bmap,
       unsigned int max_ppods,
       unsigned int start,
       unsigned int nr,
       unsigned int align_mask)
{
 unsigned long i;

 i = bitmap_find_next_zero_area(bmap, max_ppods, start, nr, align_mask);

 if (unlikely(i >= max_ppods) && (start > nr))
  i = bitmap_find_next_zero_area(bmap, max_ppods, 0, start - 1,
            align_mask);
 if (unlikely(i >= max_ppods))
  return -ENOSPC;

 bitmap_set(bmap, i, nr);
 return (int)i;
}
