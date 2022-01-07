
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int dummy; } ;


 int NAND_WRITE_DATA ;
 int nand_to_mtd (struct nand_chip*) ;
 int xway_readb (int ,int ) ;

__attribute__((used)) static void xway_read_buf(struct nand_chip *chip, u_char *buf, int len)
{
 int i;

 for (i = 0; i < len; i++)
  buf[i] = xway_readb(nand_to_mtd(chip), NAND_WRITE_DATA);
}
