
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TX_RING_SIZE ;

__attribute__((used)) static __inline__ int gem_intme(int entry)
{

 if (!(entry & ((TX_RING_SIZE>>1)-1)))
  return 1;

 return 0;
}
