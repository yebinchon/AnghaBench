
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj_port_mdb {int vid; int addr; } ;
struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;


 int mv88e6xxx_port_db_load_purge (struct mv88e6xxx_chip*,int,int ,int ,int ) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_port_mdb_del(struct dsa_switch *ds, int port,
      const struct switchdev_obj_port_mdb *mdb)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 int err;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_port_db_load_purge(chip, port, mdb->addr, mdb->vid, 0);
 mv88e6xxx_reg_unlock(chip);

 return err;
}
