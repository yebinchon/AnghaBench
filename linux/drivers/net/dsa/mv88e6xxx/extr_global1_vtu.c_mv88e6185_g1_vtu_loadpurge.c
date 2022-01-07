
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_vtu_entry {int fid; scalar_t__ valid; } ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_VTU_OP_VTU_LOAD_PURGE ;
 int mv88e6185_g1_vtu_data_write (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;
 int mv88e6xxx_g1_vtu_op (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_g1_vtu_op_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g1_vtu_vid_write (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;

int mv88e6185_g1_vtu_loadpurge(struct mv88e6xxx_chip *chip,
          struct mv88e6xxx_vtu_entry *entry)
{
 u16 op = MV88E6XXX_G1_VTU_OP_VTU_LOAD_PURGE;
 int err;

 err = mv88e6xxx_g1_vtu_op_wait(chip);
 if (err)
  return err;

 err = mv88e6xxx_g1_vtu_vid_write(chip, entry);
 if (err)
  return err;

 if (entry->valid) {
  err = mv88e6185_g1_vtu_data_write(chip, entry);
  if (err)
   return err;




  op |= entry->fid & 0x000f;
  op |= (entry->fid & 0x00f0) << 4;
 }

 return mv88e6xxx_g1_vtu_op(chip, op);
}
