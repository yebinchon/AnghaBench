
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;



u8 dst_check_sum(u8 *buf, u32 len)
{
 u32 i;
 u8 val = 0;
 if (!len)
  return 0;
 for (i = 0; i < len; i++) {
  val += buf[i];
 }
 return ((~val) + 1);
}
