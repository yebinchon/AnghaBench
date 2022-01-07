
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lan9303 {int phy_addr_base; TYPE_1__* ds; int dev; } ;
struct TYPE_3__ {int phys_mii_mask; int * ops; struct lan9303* priv; } ;


 int ENOMEM ;
 int GENMASK (int,int) ;
 int LAN9303_NUM_PORTS ;
 int dsa_register_switch (TYPE_1__*) ;
 TYPE_1__* dsa_switch_alloc (int ,int) ;
 int lan9303_switch_ops ;

__attribute__((used)) static int lan9303_register_switch(struct lan9303 *chip)
{
 int base;

 chip->ds = dsa_switch_alloc(chip->dev, LAN9303_NUM_PORTS);
 if (!chip->ds)
  return -ENOMEM;

 chip->ds->priv = chip;
 chip->ds->ops = &lan9303_switch_ops;
 base = chip->phy_addr_base;
 chip->ds->phys_mii_mask = GENMASK(LAN9303_NUM_PORTS - 1 + base, base);

 return dsa_register_switch(chip->ds);
}
