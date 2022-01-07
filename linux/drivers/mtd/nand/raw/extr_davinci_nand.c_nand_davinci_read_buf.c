
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int ioread16_rep (int ,int *,int) ;
 int ioread32_rep (int ,int *,int) ;
 int ioread8_rep (int ,int *,int) ;

__attribute__((used)) static void nand_davinci_read_buf(struct nand_chip *chip, uint8_t *buf,
      int len)
{
 if ((0x03 & ((uintptr_t)buf)) == 0 && (0x03 & len) == 0)
  ioread32_rep(chip->legacy.IO_ADDR_R, buf, len >> 2);
 else if ((0x01 & ((uintptr_t)buf)) == 0 && (0x01 & len) == 0)
  ioread16_rep(chip->legacy.IO_ADDR_R, buf, len >> 1);
 else
  ioread8_rep(chip->legacy.IO_ADDR_R, buf, len);
}
