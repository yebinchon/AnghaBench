
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct realtek_smi {TYPE_1__* ops; } ;
struct mii_bus {struct realtek_smi* priv; } ;
struct TYPE_2__ {int (* phy_write ) (struct realtek_smi*,int,int,int ) ;} ;


 int stub1 (struct realtek_smi*,int,int,int ) ;

__attribute__((used)) static int realtek_smi_mdio_write(struct mii_bus *bus, int addr, int regnum,
      u16 val)
{
 struct realtek_smi *smi = bus->priv;

 return smi->ops->phy_write(smi, addr, regnum, val);
}
