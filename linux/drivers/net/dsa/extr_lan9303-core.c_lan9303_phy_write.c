
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct lan9303 {int phy_addr_base; TYPE_1__* ops; } ;
struct dsa_switch {struct lan9303* priv; } ;
struct TYPE_2__ {int (* phy_write ) (struct lan9303*,int,int,int ) ;} ;


 int ENODEV ;
 int lan9303_virt_phy_reg_write (struct lan9303*,int,int ) ;
 int stub1 (struct lan9303*,int,int,int ) ;

__attribute__((used)) static int lan9303_phy_write(struct dsa_switch *ds, int phy, int regnum,
        u16 val)
{
 struct lan9303 *chip = ds->priv;
 int phy_base = chip->phy_addr_base;

 if (phy == phy_base)
  return lan9303_virt_phy_reg_write(chip, regnum, val);
 if (phy > phy_base + 2)
  return -ENODEV;

 return chip->ops->phy_write(chip, phy, regnum, val);
}
