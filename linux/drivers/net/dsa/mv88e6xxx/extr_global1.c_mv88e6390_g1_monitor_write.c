
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6390_G1_MONITOR_MGMT_CTL ;
 int MV88E6390_G1_MONITOR_MGMT_CTL_UPDATE ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6390_g1_monitor_write(struct mv88e6xxx_chip *chip,
          u16 pointer, u8 data)
{
 u16 reg;

 reg = MV88E6390_G1_MONITOR_MGMT_CTL_UPDATE | pointer | data;

 return mv88e6xxx_g1_write(chip, MV88E6390_G1_MONITOR_MGMT_CTL, reg);
}
