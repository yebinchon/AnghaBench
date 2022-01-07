
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_ADDR_SERDES ;
 int MV88E6352_SERDES_PAGE_FIBER ;
 int mv88e6xxx_phy_page_write (struct mv88e6xxx_chip*,int ,int ,int,int ) ;

__attribute__((used)) static int mv88e6352_serdes_write(struct mv88e6xxx_chip *chip, int reg,
      u16 val)
{
 return mv88e6xxx_phy_page_write(chip, MV88E6352_ADDR_SERDES,
     MV88E6352_SERDES_PAGE_FIBER,
     reg, val);
}
