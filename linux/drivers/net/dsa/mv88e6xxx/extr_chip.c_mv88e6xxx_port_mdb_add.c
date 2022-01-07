
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj_port_mdb {int vid; int addr; } ;
struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {int dev; struct mv88e6xxx_chip* priv; } ;


 int MV88E6XXX_G1_ATU_DATA_STATE_MC_STATIC ;
 int dev_err (int ,char*,int) ;
 scalar_t__ mv88e6xxx_port_db_load_purge (struct mv88e6xxx_chip*,int,int ,int ,int ) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static void mv88e6xxx_port_mdb_add(struct dsa_switch *ds, int port,
       const struct switchdev_obj_port_mdb *mdb)
{
 struct mv88e6xxx_chip *chip = ds->priv;

 mv88e6xxx_reg_lock(chip);
 if (mv88e6xxx_port_db_load_purge(chip, port, mdb->addr, mdb->vid,
      MV88E6XXX_G1_ATU_DATA_STATE_MC_STATIC))
  dev_err(ds->dev, "p%d: failed to load multicast MAC address\n",
   port);
 mv88e6xxx_reg_unlock(chip);
}
