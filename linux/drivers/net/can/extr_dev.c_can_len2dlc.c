
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* len2dlc ;
 scalar_t__ unlikely (int) ;

u8 can_len2dlc(u8 len)
{
 if (unlikely(len > 64))
  return 0xF;

 return len2dlc[len];
}
