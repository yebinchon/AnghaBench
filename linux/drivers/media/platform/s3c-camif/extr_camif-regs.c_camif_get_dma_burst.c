
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static void camif_get_dma_burst(u32 width, u32 ybpp, u32 *mburst, u32 *rburst)
{
 unsigned int nwords = width * ybpp / 4;
 unsigned int div, rem;

 if (WARN_ON(width < 8 || (width * ybpp) & 7))
  return;

 for (div = 16; div >= 2; div /= 2) {
  if (nwords < div)
   continue;

  rem = nwords & (div - 1);
  if (rem == 0) {
   *mburst = div;
   *rburst = div;
   break;
  }
  if (rem == div / 2 || rem == div / 4) {
   *mburst = div;
   *rburst = rem;
   break;
  }
 }
}
