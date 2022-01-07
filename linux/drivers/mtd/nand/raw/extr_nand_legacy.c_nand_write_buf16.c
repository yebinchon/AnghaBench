
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u16 ;
struct TYPE_2__ {int IO_ADDR_W; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int iowrite16_rep (int ,int *,int) ;

__attribute__((used)) static void nand_write_buf16(struct nand_chip *chip, const uint8_t *buf,
        int len)
{
 u16 *p = (u16 *) buf;

 iowrite16_rep(chip->legacy.IO_ADDR_W, p, len >> 1);
}
