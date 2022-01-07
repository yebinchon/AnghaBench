
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DPAA_BP_RAW_SIZE ;

__attribute__((used)) static inline size_t bpool_buffer_raw_size(u8 index, u8 cnt)
{
 size_t res = DPAA_BP_RAW_SIZE / 4;
 u8 i;

 for (i = (cnt < 3) ? cnt : 3; i < 3 + index; i++)
  res *= 2;
 return res;
}
