
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_iterator {int advance_array; int count; unsigned long* stats_bitmap; scalar_t__ iterator; } ;


 int bitmap_empty (unsigned long*,int) ;
 int bitmap_weight (unsigned long*,int) ;

__attribute__((used)) static inline void bitmap_iterator_init(struct bitmap_iterator *h,
     unsigned long *stats_bitmap,
     int count)
{
 h->iterator = 0;
 h->advance_array = !bitmap_empty(stats_bitmap, count);
 h->count = h->advance_array ? bitmap_weight(stats_bitmap, count)
  : count;
 h->stats_bitmap = stats_bitmap;
}
