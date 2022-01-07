
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CLK_DIV_1 ;
 int SSC_DEPTH_2M ;

__attribute__((used)) static u8 revise_ssc_depth(u8 ssc_depth, u8 div)
{
 if (div > CLK_DIV_1) {
  if (ssc_depth > div - 1)
   ssc_depth -= (div - 1);
  else
   ssc_depth = SSC_DEPTH_2M;
 }

 return ssc_depth;
}
