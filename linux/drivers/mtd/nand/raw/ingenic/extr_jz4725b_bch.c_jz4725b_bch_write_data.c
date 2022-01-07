
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ingenic_ecc {scalar_t__ base; } ;


 scalar_t__ BCH_BHDR ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void jz4725b_bch_write_data(struct ingenic_ecc *bch, const u8 *buf,
       size_t size)
{
 while (size--)
  writeb(*buf++, bch->base + BCH_BHDR);
}
