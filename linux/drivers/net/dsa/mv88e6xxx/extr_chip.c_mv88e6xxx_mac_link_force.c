
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv88e6xxx_chip {int dev; TYPE_2__* info; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* port_set_link ) (struct mv88e6xxx_chip*,int,int) ;} ;


 int dev_err (int ,char*,int) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int stub1 (struct mv88e6xxx_chip*,int,int) ;

__attribute__((used)) static void mv88e6xxx_mac_link_force(struct dsa_switch *ds, int port, int link)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 int err;

 mv88e6xxx_reg_lock(chip);
 err = chip->info->ops->port_set_link(chip, port, link);
 mv88e6xxx_reg_unlock(chip);

 if (err)
  dev_err(chip->dev, "p%d: failed to force MAC link\n", port);
}
