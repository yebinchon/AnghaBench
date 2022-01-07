
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int mapM(int srcMin, int srcMax, int srcVal, int dstMin, int dstMax,
  int *dstVal)
{
 int numerator;
 int denominator;
 int quotient;

 if ((srcMin == srcMax) || (srcVal < srcMin) || (srcVal > srcMax))
  return -1;







 numerator = (srcVal - srcMin) * (dstMax - dstMin);
 denominator = srcMax - srcMin;
 quotient = numerator / denominator;

 if (2 * (numerator % denominator) >= denominator)
  quotient++;

 *dstVal = quotient + dstMin;

 return 0;
}
