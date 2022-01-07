
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;


 int MV88E6XXX_G1_ATU_DATA_STATE_UC_STATIC ;
 int mv88e6xxx_port_db_load_purge (struct mv88e6xxx_chip*,int,unsigned char const*,int ,int ) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_port_fdb_add(struct dsa_switch *ds, int port,
      const unsigned char *addr, u16 vid)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 int err;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_port_db_load_purge(chip, port, addr, vid,
        MV88E6XXX_G1_ATU_DATA_STATE_UC_STATIC);
 mv88e6xxx_reg_unlock(chip);

 return err;
}
