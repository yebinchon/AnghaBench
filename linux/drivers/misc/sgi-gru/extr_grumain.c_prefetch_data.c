
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prefetchw (void*) ;

__attribute__((used)) static void prefetch_data(void *p, int num, int stride)
{
 while (num-- > 0) {
  prefetchw(p);
  p += stride;
 }
}
