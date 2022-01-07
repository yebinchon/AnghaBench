
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;


 int brcmnand_read_byte (struct nand_chip*) ;

__attribute__((used)) static void brcmnand_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
{
 int i;

 for (i = 0; i < len; i++, buf++)
  *buf = brcmnand_read_byte(chip);
}
