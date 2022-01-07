
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vword ;



__attribute__((used)) static inline void
STNIC_DELAY (void)
{
  vword trash;
  trash = *(vword *) 0xa0000000;
  trash = *(vword *) 0xa0000000;
  trash = *(vword *) 0xa0000000;
}
