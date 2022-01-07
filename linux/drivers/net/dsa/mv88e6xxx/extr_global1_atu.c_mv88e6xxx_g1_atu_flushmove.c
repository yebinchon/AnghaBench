
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mv88e6xxx_chip {int dummy; } ;
struct mv88e6xxx_atu_entry {int dummy; } ;


 scalar_t__ MV88E6XXX_G1_ATU_OP_FLUSH_MOVE_ALL ;
 scalar_t__ MV88E6XXX_G1_ATU_OP_FLUSH_MOVE_ALL_DB ;
 scalar_t__ MV88E6XXX_G1_ATU_OP_FLUSH_MOVE_NON_STATIC ;
 scalar_t__ MV88E6XXX_G1_ATU_OP_FLUSH_MOVE_NON_STATIC_DB ;
 int mv88e6xxx_g1_atu_data_write (struct mv88e6xxx_chip*,struct mv88e6xxx_atu_entry*) ;
 int mv88e6xxx_g1_atu_op (struct mv88e6xxx_chip*,scalar_t__,scalar_t__) ;
 int mv88e6xxx_g1_atu_op_wait (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_g1_atu_flushmove(struct mv88e6xxx_chip *chip, u16 fid,
          struct mv88e6xxx_atu_entry *entry,
          bool all)
{
 u16 op;
 int err;

 err = mv88e6xxx_g1_atu_op_wait(chip);
 if (err)
  return err;

 err = mv88e6xxx_g1_atu_data_write(chip, entry);
 if (err)
  return err;


 if (all && fid)
  op = MV88E6XXX_G1_ATU_OP_FLUSH_MOVE_ALL_DB;
 else if (fid)
  op = MV88E6XXX_G1_ATU_OP_FLUSH_MOVE_NON_STATIC_DB;
 else if (all)
  op = MV88E6XXX_G1_ATU_OP_FLUSH_MOVE_ALL;
 else
  op = MV88E6XXX_G1_ATU_OP_FLUSH_MOVE_NON_STATIC;

 return mv88e6xxx_g1_atu_op(chip, fid, op);
}
