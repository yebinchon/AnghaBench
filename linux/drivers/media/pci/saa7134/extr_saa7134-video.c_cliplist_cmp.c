
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cliplist {scalar_t__ position; } ;



__attribute__((used)) static int cliplist_cmp(const void *a, const void *b)
{
 const struct cliplist *cla = a;
 const struct cliplist *clb = b;
 if (cla->position < clb->position)
  return -1;
 if (cla->position > clb->position)
  return 1;
 return 0;
}
