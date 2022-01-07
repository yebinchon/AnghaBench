
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lan9303 {int phy_addr_base; TYPE_1__* ops; } ;
struct dsa_switch {struct lan9303* priv; } ;
struct TYPE_2__ {int (* phy_read ) (struct lan9303*,int,int) ;} ;


 int ENODEV ;
 int lan9303_virt_phy_reg_read (struct lan9303*,int) ;
 int stub1 (struct lan9303*,int,int) ;

__attribute__((used)) static int lan9303_phy_read(struct dsa_switch *ds, int phy, int regnum)
{
 struct lan9303 *chip = ds->priv;
 int phy_base = chip->phy_addr_base;

 if (phy == phy_base)
  return lan9303_virt_phy_reg_read(chip, regnum);
 if (phy > phy_base + 2)
  return -ENODEV;

 return chip->ops->phy_read(chip, phy, regnum);
}
