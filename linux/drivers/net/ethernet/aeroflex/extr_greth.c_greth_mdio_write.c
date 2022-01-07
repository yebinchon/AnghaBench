
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mii_bus {struct greth_private* priv; } ;
struct greth_private {TYPE_1__* regs; } ;
struct TYPE_2__ {int mdio; } ;


 int EBUSY ;
 int GRETH_REGSAVE (int ,int) ;
 int wait_for_mdio (struct greth_private*) ;

__attribute__((used)) static int greth_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val)
{
 struct greth_private *greth = bus->priv;

 if (!wait_for_mdio(greth))
  return -EBUSY;

 GRETH_REGSAVE(greth->regs->mdio,
        ((val & 0xFFFF) << 16) | ((phy & 0x1F) << 11) | ((reg & 0x1F) << 6) | 1);

 if (!wait_for_mdio(greth))
  return -EBUSY;

 return 0;
}
