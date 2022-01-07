
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {struct greth_private* priv; } ;
struct greth_private {TYPE_1__* regs; } ;
struct TYPE_2__ {int mdio; } ;


 int EBUSY ;
 int GRETH_MII_NVALID ;
 int GRETH_REGLOAD (int ) ;
 int GRETH_REGSAVE (int ,int) ;
 int wait_for_mdio (struct greth_private*) ;

__attribute__((used)) static int greth_mdio_read(struct mii_bus *bus, int phy, int reg)
{
 struct greth_private *greth = bus->priv;
 int data;

 if (!wait_for_mdio(greth))
  return -EBUSY;

 GRETH_REGSAVE(greth->regs->mdio, ((phy & 0x1F) << 11) | ((reg & 0x1F) << 6) | 2);

 if (!wait_for_mdio(greth))
  return -EBUSY;

 if (!(GRETH_REGLOAD(greth->regs->mdio) & GRETH_MII_NVALID)) {
  data = (GRETH_REGLOAD(greth->regs->mdio) >> 16) & 0xFFFF;
  return data;

 } else {
  return -1;
 }
}
