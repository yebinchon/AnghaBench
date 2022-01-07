
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct v4l2_fract {int numerator; int denominator; } ;


 int CODA_FRATE_DIV_OFFSET ;

__attribute__((used)) static uint32_t coda_timeperframe_to_frate(struct v4l2_fract *timeperframe)
{
 return ((timeperframe->numerator - 1) << CODA_FRATE_DIV_OFFSET) |
  timeperframe->denominator;
}
