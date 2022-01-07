
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dev; } ;


 int MV88E6XXX_PHY_PAGE ;
 int MV88E6XXX_PHY_PAGE_COPPER ;
 int dev_err (int ,char*,int,int) ;
 int mv88e6xxx_phy_write (struct mv88e6xxx_chip*,int,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mv88e6xxx_phy_page_put(struct mv88e6xxx_chip *chip, int phy)
{
 int err;




 err = mv88e6xxx_phy_write(chip, phy, MV88E6XXX_PHY_PAGE,
      MV88E6XXX_PHY_PAGE_COPPER);
 if (unlikely(err)) {
  dev_err(chip->dev,
   "failed to restore PHY %d page Copper (%d)\n",
   phy, err);
 }
}
