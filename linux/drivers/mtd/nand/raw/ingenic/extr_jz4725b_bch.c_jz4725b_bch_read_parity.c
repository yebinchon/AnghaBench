
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ingenic_ecc {int base; } ;


 int BCH_BHPAR0 ;
 void* readl_relaxed (int) ;

__attribute__((used)) static void jz4725b_bch_read_parity(struct ingenic_ecc *bch, u8 *buf,
        size_t size)
{
 size_t size32 = size / sizeof(u32);
 size_t size8 = size % sizeof(u32);
 u32 *dest32;
 u8 *dest8;
 u32 val, offset = 0;

 dest32 = (u32 *)buf;
 while (size32--) {
  *dest32++ = readl_relaxed(bch->base + BCH_BHPAR0 + offset);
  offset += sizeof(u32);
 }

 dest8 = (u8 *)dest32;
 val = readl_relaxed(bch->base + BCH_BHPAR0 + offset);
 switch (size8) {
 case 3:
  dest8[2] = (val >> 16) & 0xff;

 case 2:
  dest8[1] = (val >> 8) & 0xff;

 case 1:
  dest8[0] = val & 0xff;
  break;
 }
}
