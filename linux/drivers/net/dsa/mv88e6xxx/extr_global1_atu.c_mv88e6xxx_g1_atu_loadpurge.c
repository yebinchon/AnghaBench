
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
struct mv88e6xxx_atu_entry {int dummy; } ;


 int MV88E6XXX_G1_ATU_OP_LOAD_DB ;
 int mv88e6xxx_g1_atu_data_write (struct mv88e6xxx_chip*,struct mv88e6xxx_atu_entry*) ;
 int mv88e6xxx_g1_atu_mac_write (struct mv88e6xxx_chip*,struct mv88e6xxx_atu_entry*) ;
 int mv88e6xxx_g1_atu_op (struct mv88e6xxx_chip*,int ,int ) ;
 int mv88e6xxx_g1_atu_op_wait (struct mv88e6xxx_chip*) ;

int mv88e6xxx_g1_atu_loadpurge(struct mv88e6xxx_chip *chip, u16 fid,
          struct mv88e6xxx_atu_entry *entry)
{
 int err;

 err = mv88e6xxx_g1_atu_op_wait(chip);
 if (err)
  return err;

 err = mv88e6xxx_g1_atu_mac_write(chip, entry);
 if (err)
  return err;

 err = mv88e6xxx_g1_atu_data_write(chip, entry);
 if (err)
  return err;

 return mv88e6xxx_g1_atu_op(chip, fid, MV88E6XXX_G1_ATU_OP_LOAD_DB);
}
