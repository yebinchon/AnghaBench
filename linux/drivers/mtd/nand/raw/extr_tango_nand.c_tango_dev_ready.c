
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tango_nfc {scalar_t__ pbus_base; } ;
struct nand_chip {int controller; } ;


 scalar_t__ PBUS_CS_CTRL ;
 int PBUS_IORDY ;
 int readl_relaxed (scalar_t__) ;
 struct tango_nfc* to_tango_nfc (int ) ;

__attribute__((used)) static int tango_dev_ready(struct nand_chip *chip)
{
 struct tango_nfc *nfc = to_tango_nfc(chip->controller);

 return readl_relaxed(nfc->pbus_base + PBUS_CS_CTRL) & PBUS_IORDY;
}
