
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_G1_ATU_FID ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g1_atu_fid_write(struct mv88e6xxx_chip *chip, u16 fid)
{
 return mv88e6xxx_g1_write(chip, MV88E6352_G1_ATU_FID, fid & 0xfff);
}
