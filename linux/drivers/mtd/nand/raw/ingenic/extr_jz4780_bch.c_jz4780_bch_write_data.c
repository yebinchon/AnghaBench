
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ingenic_ecc {scalar_t__ base; } ;


 scalar_t__ BCH_BHDR ;
 int writeb (int ,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void jz4780_bch_write_data(struct ingenic_ecc *bch, const void *buf,
      size_t size)
{
 size_t size32 = size / sizeof(u32);
 size_t size8 = size % sizeof(u32);
 const u32 *src32;
 const u8 *src8;

 src32 = (const u32 *)buf;
 while (size32--)
  writel(*src32++, bch->base + BCH_BHDR);

 src8 = (const u8 *)src32;
 while (size8--)
  writeb(*src8++, bch->base + BCH_BHDR);
}
