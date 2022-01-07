
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct v4l2_fract {unsigned long numerator; unsigned long denominator; } ;


 unsigned long FRAME_RATE_MAX ;

__attribute__((used)) static u8 to_clkrc(struct v4l2_fract *timeperframe,
  unsigned long pclk_limit, unsigned long pclk_max)
{
 unsigned long pclk;

 if (timeperframe->numerator && timeperframe->denominator)
  pclk = pclk_max * timeperframe->denominator /
    (FRAME_RATE_MAX * timeperframe->numerator);
 else
  pclk = pclk_max;

 if (pclk_limit && pclk_limit < pclk)
  pclk = pclk_limit;

 return (pclk_max - 1) / pclk;
}
