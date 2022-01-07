
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t is_one_or_even(uint32_t a)
{
 if (a == 1)
  return 1;
 if (a & 1)
  return 0;

 return 1;
}
