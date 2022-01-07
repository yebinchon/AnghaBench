
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_bar {scalar_t__ bitsize; int index; } ;



__attribute__((used)) static int bar_cmp(const void *aptr, const void *bptr)
{
 const struct nfp_bar *a = aptr, *b = bptr;

 if (a->bitsize == b->bitsize)
  return a->index - b->index;
 else
  return a->bitsize - b->bitsize;
}
