
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int dummy; } ;


 int NAND_WRITE_DATA ;
 int nand_to_mtd (struct nand_chip*) ;
 int xway_writeb (int ,int ,int const) ;

__attribute__((used)) static void xway_write_buf(struct nand_chip *chip, const u_char *buf, int len)
{
 int i;

 for (i = 0; i < len; i++)
  xway_writeb(nand_to_mtd(chip), NAND_WRITE_DATA, buf[i]);
}
