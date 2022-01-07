
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_fract {int denominator; int numerator; } ;



__attribute__((used)) static inline u32 avg_fps(const struct v4l2_fract *t)
{
 return (t->denominator + (t->numerator >> 1)) / t->numerator;
}
