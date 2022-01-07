
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tango_chip {scalar_t__ base; } ;
struct nand_chip {int dummy; } ;


 scalar_t__ PBUS_DATA ;
 int readb_relaxed (scalar_t__) ;
 struct tango_chip* to_tango_chip (struct nand_chip*) ;

__attribute__((used)) static u8 tango_read_byte(struct nand_chip *chip)
{
 struct tango_chip *tchip = to_tango_chip(chip);

 return readb_relaxed(tchip->base + PBUS_DATA);
}
