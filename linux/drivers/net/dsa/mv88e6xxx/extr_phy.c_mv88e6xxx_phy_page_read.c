
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int EINVAL ;
 int MV88E6XXX_PHY_PAGE ;
 int mv88e6xxx_phy_page_get (struct mv88e6xxx_chip*,int,int ) ;
 int mv88e6xxx_phy_page_put (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_phy_read (struct mv88e6xxx_chip*,int,int,int *) ;

int mv88e6xxx_phy_page_read(struct mv88e6xxx_chip *chip, int phy,
       u8 page, int reg, u16 *val)
{
 int err;


 if (reg == MV88E6XXX_PHY_PAGE)
  return -EINVAL;

 err = mv88e6xxx_phy_page_get(chip, phy, page);
 if (!err) {
  err = mv88e6xxx_phy_read(chip, phy, reg, val);
  mv88e6xxx_phy_page_put(chip, phy);
 }

 return err;
}
