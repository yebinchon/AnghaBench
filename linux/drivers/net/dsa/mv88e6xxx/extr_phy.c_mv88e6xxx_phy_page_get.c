
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_PHY_PAGE ;
 int mv88e6xxx_phy_write (struct mv88e6xxx_chip*,int,int ,int ) ;

__attribute__((used)) static int mv88e6xxx_phy_page_get(struct mv88e6xxx_chip *chip, int phy, u8 page)
{
 return mv88e6xxx_phy_write(chip, phy, MV88E6XXX_PHY_PAGE, page);
}
