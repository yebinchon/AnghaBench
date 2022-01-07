
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ BNX2_MAX_RX_DESC_CNT ;

__attribute__((used)) static u32 bnx2_find_max_ring(u32 ring_size, u32 max_size)
{
 u32 max, num_rings = 1;

 while (ring_size > BNX2_MAX_RX_DESC_CNT) {
  ring_size -= BNX2_MAX_RX_DESC_CNT;
  num_rings++;
 }

 max = max_size;
 while ((max & num_rings) == 0)
  max >>= 1;

 if (num_rings != max)
  max <<= 1;

 return max;
}
