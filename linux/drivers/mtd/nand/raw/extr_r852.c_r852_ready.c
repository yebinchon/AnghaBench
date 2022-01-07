
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r852_device {int dummy; } ;
struct nand_chip {int dummy; } ;


 int R852_CARD_STA ;
 int R852_CARD_STA_BUSY ;
 int nand_to_mtd (struct nand_chip*) ;
 struct r852_device* r852_get_dev (int ) ;
 int r852_read_reg (struct r852_device*,int ) ;

__attribute__((used)) static int r852_ready(struct nand_chip *chip)
{
 struct r852_device *dev = r852_get_dev(nand_to_mtd(chip));
 return !(r852_read_reg(dev, R852_CARD_STA) & R852_CARD_STA_BUSY);
}
