
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MII_ADDR_C45 ;
 int mv88e6xxx_phy_write (struct mv88e6xxx_chip*,int,int,int ) ;

__attribute__((used)) static int mv88e6390_serdes_write(struct mv88e6xxx_chip *chip,
      int lane, int device, int reg, u16 val)
{
 int reg_c45 = MII_ADDR_C45 | device << 16 | reg;

 return mv88e6xxx_phy_write(chip, lane, reg_c45, val);
}
