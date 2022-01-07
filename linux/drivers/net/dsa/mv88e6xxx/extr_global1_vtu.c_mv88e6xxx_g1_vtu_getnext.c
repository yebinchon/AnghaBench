
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_vtu_entry {int valid; } ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_VTU_OP_VTU_GET_NEXT ;
 int mv88e6xxx_g1_vtu_op (struct mv88e6xxx_chip*,int ) ;
 int mv88e6xxx_g1_vtu_op_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g1_vtu_vid_read (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;
 int mv88e6xxx_g1_vtu_vid_write (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;

__attribute__((used)) static int mv88e6xxx_g1_vtu_getnext(struct mv88e6xxx_chip *chip,
        struct mv88e6xxx_vtu_entry *entry)
{
 int err;

 err = mv88e6xxx_g1_vtu_op_wait(chip);
 if (err)
  return err;
 if (!entry->valid) {
  err = mv88e6xxx_g1_vtu_vid_write(chip, entry);
  if (err)
   return err;
 }

 err = mv88e6xxx_g1_vtu_op(chip, MV88E6XXX_G1_VTU_OP_VTU_GET_NEXT);
 if (err)
  return err;

 return mv88e6xxx_g1_vtu_vid_read(chip, entry);
}
