
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct r852_device {scalar_t__ card_unstable; } ;
struct nand_chip {int dummy; } ;


 int R852_DATALINE ;
 int nand_to_mtd (struct nand_chip*) ;
 struct r852_device* r852_get_dev (int ) ;
 int r852_read_reg (struct r852_device*,int ) ;

__attribute__((used)) static uint8_t r852_read_byte(struct nand_chip *chip)
{
 struct r852_device *dev = r852_get_dev(nand_to_mtd(chip));


 if (dev->card_unstable)
  return 0;

 return r852_read_reg(dev, R852_DATALINE);
}
