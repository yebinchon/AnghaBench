
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int mt9v032_calc_ratio(unsigned int input, unsigned int output)
{




 if (output * 3 > input * 2)
  return 1;
 if (output * 3 > input)
  return 2;
 return 4;
}
