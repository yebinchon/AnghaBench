
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_iterator {int iterator; } ;



__attribute__((used)) static inline int bitmap_iterator_inc(struct bitmap_iterator *h)
{
 return h->iterator++;
}
