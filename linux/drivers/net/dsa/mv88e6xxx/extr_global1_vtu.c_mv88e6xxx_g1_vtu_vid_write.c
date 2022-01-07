
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_vtu_entry {int vid; scalar_t__ valid; } ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6390_G1_VTU_VID_PAGE ;
 int MV88E6XXX_G1_VTU_VID ;
 int MV88E6XXX_G1_VTU_VID_VALID ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g1_vtu_vid_write(struct mv88e6xxx_chip *chip,
          struct mv88e6xxx_vtu_entry *entry)
{
 u16 val = entry->vid & 0xfff;

 if (entry->vid & 0x1000)
  val |= MV88E6390_G1_VTU_VID_PAGE;

 if (entry->valid)
  val |= MV88E6XXX_G1_VTU_VID_VALID;

 return mv88e6xxx_g1_write(chip, MV88E6XXX_G1_VTU_VID, val);
}
