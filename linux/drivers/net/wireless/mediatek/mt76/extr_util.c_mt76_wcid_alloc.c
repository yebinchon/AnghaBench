
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BIT (int) ;
 int BITS_PER_LONG ;
 int ffs (unsigned long) ;

int mt76_wcid_alloc(unsigned long *mask, int size)
{
 int i, idx = 0, cur;

 for (i = 0; i < size / BITS_PER_LONG; i++) {
  idx = ffs(~mask[i]);
  if (!idx)
   continue;

  idx--;
  cur = i * BITS_PER_LONG + idx;
  if (cur >= size)
   break;

  mask[i] |= BIT(idx);
  return cur;
 }

 return -1;
}
