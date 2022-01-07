
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



u32 uvc_fraction_to_interval(u32 numerator, u32 denominator)
{
 u32 multiplier;


 if (denominator == 0 ||
     numerator/denominator >= ((u32)-1)/10000000)
  return (u32)-1;





 multiplier = 10000000;
 while (numerator > ((u32)-1)/multiplier) {
  multiplier /= 2;
  denominator /= 2;
 }

 return denominator ? numerator * multiplier / denominator : 0;
}
