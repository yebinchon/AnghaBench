
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tango_chip {scalar_t__ base; } ;
struct nand_chip {int dummy; } ;


 scalar_t__ PBUS_DATA ;
 int ioread8_rep (scalar_t__,int *,int) ;
 struct tango_chip* to_tango_chip (struct nand_chip*) ;

__attribute__((used)) static void tango_read_buf(struct nand_chip *chip, u8 *buf, int len)
{
 struct tango_chip *tchip = to_tango_chip(chip);

 ioread8_rep(tchip->base + PBUS_DATA, buf, len);
}
