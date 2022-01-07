
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mem_start; } ;



__attribute__((used)) static void dayna_memcpy_fromcard(struct net_device *dev, void *to, int from,
      int count)
{
 volatile unsigned char *ptr;
 unsigned char *target = to;
 from <<= 1;
 ptr = (unsigned char *)(dev->mem_start+from);

 if (from & 2) {
  *target++ = ptr[-1];
  ptr += 2;
  count--;
 }
 while (count >= 2) {
  *(unsigned short *)target = *(unsigned short volatile *)ptr;
  ptr += 4;
  target += 2;
  count -= 2;
 }

 if (count)
  *target = *ptr;
}
