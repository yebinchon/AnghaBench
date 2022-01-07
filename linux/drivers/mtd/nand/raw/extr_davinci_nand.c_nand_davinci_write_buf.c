
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int iowrite16_rep (int ,int const*,int) ;
 int iowrite32_rep (int ,int const*,int) ;
 int iowrite8_rep (int ,int const*,int) ;

__attribute__((used)) static void nand_davinci_write_buf(struct nand_chip *chip, const uint8_t *buf,
       int len)
{
 if ((0x03 & ((uintptr_t)buf)) == 0 && (0x03 & len) == 0)
  iowrite32_rep(chip->legacy.IO_ADDR_R, buf, len >> 2);
 else if ((0x01 & ((uintptr_t)buf)) == 0 && (0x01 & len) == 0)
  iowrite16_rep(chip->legacy.IO_ADDR_R, buf, len >> 1);
 else
  iowrite8_rep(chip->legacy.IO_ADDR_R, buf, len);
}
