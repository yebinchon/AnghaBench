
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_vtu_entry {int fid; } ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_G1_VTU_FID ;
 int MV88E6352_G1_VTU_FID_MASK ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g1_vtu_fid_write(struct mv88e6xxx_chip *chip,
          struct mv88e6xxx_vtu_entry *entry)
{
 u16 val = entry->fid & MV88E6352_G1_VTU_FID_MASK;

 return mv88e6xxx_g1_write(chip, MV88E6352_G1_VTU_FID, val);
}
