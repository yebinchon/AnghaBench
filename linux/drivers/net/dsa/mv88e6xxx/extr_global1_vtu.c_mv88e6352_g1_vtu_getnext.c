
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_vtu_entry {scalar_t__ valid; } ;
struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6185_g1_vtu_data_read (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;
 int mv88e6xxx_g1_vtu_fid_read (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;
 int mv88e6xxx_g1_vtu_getnext (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;
 int mv88e6xxx_g1_vtu_stu_get (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;

int mv88e6352_g1_vtu_getnext(struct mv88e6xxx_chip *chip,
        struct mv88e6xxx_vtu_entry *entry)
{
 int err;


 err = mv88e6xxx_g1_vtu_getnext(chip, entry);
 if (err)
  return err;

 if (entry->valid) {

  err = mv88e6xxx_g1_vtu_stu_get(chip, entry);
  if (err)
   return err;

  err = mv88e6185_g1_vtu_data_read(chip, entry);
  if (err)
   return err;

  err = mv88e6xxx_g1_vtu_fid_read(chip, entry);
  if (err)
   return err;
 }

 return 0;
}
