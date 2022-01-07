
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct if_spi_card {int dummy; } ;
typedef int buf ;
typedef int __le32 ;


 int le32_to_cpup (int *) ;
 int spu_read (struct if_spi_card*,int ,int *,int) ;

__attribute__((used)) static int spu_read_u32(struct if_spi_card *card, u16 reg, u32 *val)
{
 __le32 buf;
 int err;

 err = spu_read(card, reg, (u8 *)&buf, sizeof(buf));
 if (!err)
  *val = le32_to_cpup(&buf);
 return err;
}
