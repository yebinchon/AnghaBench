
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static inline u32 grcan_ring_add(u32 a, u32 b, u32 size)
{
 u32 sum = a + b;

 if (sum < size)
  return sum;
 else
  return sum - size;
}
