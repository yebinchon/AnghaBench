
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;



__attribute__((used)) static u8 msdc_dma_calcs(u8 *buf, u32 len)
{
 u32 i, sum = 0;

 for (i = 0; i < len; i++)
  sum += buf[i];
 return 0xff - (u8) sum;
}
