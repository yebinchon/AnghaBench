
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int NAND_READ_DATA ;
 int nand_to_mtd (struct nand_chip*) ;
 unsigned char xway_readb (int ,int ) ;

__attribute__((used)) static unsigned char xway_read_byte(struct nand_chip *chip)
{
 return xway_readb(nand_to_mtd(chip), NAND_READ_DATA);
}
