
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
typedef int dsa_fdb_dump_cb_t ;


 int mv88e6xxx_port_db_dump (struct mv88e6xxx_chip*,int,int *,void*) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_port_fdb_dump(struct dsa_switch *ds, int port,
       dsa_fdb_dump_cb_t *cb, void *data)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 int err;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_port_db_dump(chip, port, cb, data);
 mv88e6xxx_reg_unlock(chip);

 return err;
}
