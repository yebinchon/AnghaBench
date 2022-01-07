
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {int phy_ignore_ta_mask; struct mdiobb_ctrl* priv; } ;
struct mdiobb_ctrl {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_mdio_dir ) (struct mdiobb_ctrl*,int ) ;} ;


 int MDIO_C45_READ ;
 int MDIO_READ ;
 int MII_ADDR_C45 ;
 int mdiobb_cmd (struct mdiobb_ctrl*,int ,int,int) ;
 int mdiobb_cmd_addr (struct mdiobb_ctrl*,int,int) ;
 scalar_t__ mdiobb_get_bit (struct mdiobb_ctrl*) ;
 int mdiobb_get_num (struct mdiobb_ctrl*,int) ;
 int stub1 (struct mdiobb_ctrl*,int ) ;

__attribute__((used)) static int mdiobb_read(struct mii_bus *bus, int phy, int reg)
{
 struct mdiobb_ctrl *ctrl = bus->priv;
 int ret, i;

 if (reg & MII_ADDR_C45) {
  reg = mdiobb_cmd_addr(ctrl, phy, reg);
  mdiobb_cmd(ctrl, MDIO_C45_READ, phy, reg);
 } else
  mdiobb_cmd(ctrl, MDIO_READ, phy, reg);

 ctrl->ops->set_mdio_dir(ctrl, 0);




 if (mdiobb_get_bit(ctrl) != 0 &&
     !(bus->phy_ignore_ta_mask & (1 << phy))) {



  for (i = 0; i < 32; i++)
   mdiobb_get_bit(ctrl);

  return 0xffff;
 }

 ret = mdiobb_get_num(ctrl, 16);
 mdiobb_get_bit(ctrl);
 return ret;
}
