
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_iterator {int stats_bitmap; int iterator; int advance_array; } ;


 int test_bit (int ,int ) ;

__attribute__((used)) static inline int bitmap_iterator_test(struct bitmap_iterator *h)
{
 return !h->advance_array ? 1 : test_bit(h->iterator, h->stats_bitmap);
}
