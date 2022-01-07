
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef scalar_t__ u8 ;



__attribute__((used)) static
u8 dma_align_sizetobits(uint size)
{
 u8 bitpos = 0;
 while (size >>= 1)
  bitpos++;
 return bitpos;
}
