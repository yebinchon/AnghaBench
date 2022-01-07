
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ DIV_ROUND_CLOSEST (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u32 divide(u32 numerator, u32 denominator)
{
 if (denominator == 0)
  return ~0;

 return DIV_ROUND_CLOSEST(numerator, denominator);
}
