
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_vtu_entry {int fid; scalar_t__ valid; } ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_VTU_OP ;
 int mv88e6185_g1_vtu_data_read (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;
 int mv88e6xxx_g1_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6xxx_g1_vtu_getnext (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;

int mv88e6185_g1_vtu_getnext(struct mv88e6xxx_chip *chip,
        struct mv88e6xxx_vtu_entry *entry)
{
 u16 val;
 int err;

 err = mv88e6xxx_g1_vtu_getnext(chip, entry);
 if (err)
  return err;

 if (entry->valid) {
  err = mv88e6185_g1_vtu_data_read(chip, entry);
  if (err)
   return err;




  err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_VTU_OP, &val);
  if (err)
   return err;

  entry->fid = val & 0x000f;
  entry->fid |= (val & 0x0f00) >> 4;
 }

 return 0;
}
