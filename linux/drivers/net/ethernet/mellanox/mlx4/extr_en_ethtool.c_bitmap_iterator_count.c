
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_iterator {unsigned int count; } ;



__attribute__((used)) static inline unsigned int
bitmap_iterator_count(struct bitmap_iterator *h)
{
 return h->count;
}
