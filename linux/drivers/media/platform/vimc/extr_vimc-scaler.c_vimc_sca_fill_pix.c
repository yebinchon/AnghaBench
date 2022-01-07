
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void vimc_sca_fill_pix(u8 *const ptr,
         const u8 *const pixel,
         const unsigned int bpp)
{
 unsigned int i;


 for (i = 0; i < bpp; i++)
  ptr[i] = pixel[i];
}
