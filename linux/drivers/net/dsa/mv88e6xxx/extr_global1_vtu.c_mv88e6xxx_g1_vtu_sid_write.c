
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_vtu_entry {int sid; } ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_G1_VTU_SID ;
 int MV88E6352_G1_VTU_SID_MASK ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g1_vtu_sid_write(struct mv88e6xxx_chip *chip,
          struct mv88e6xxx_vtu_entry *entry)
{
 u16 val = entry->sid & MV88E6352_G1_VTU_SID_MASK;

 return mv88e6xxx_g1_write(chip, MV88E6352_G1_VTU_SID, val);
}
