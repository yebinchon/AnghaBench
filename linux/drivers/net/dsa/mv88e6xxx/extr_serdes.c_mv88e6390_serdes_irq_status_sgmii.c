
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MDIO_MMD_PHYXS ;
 int MV88E6390_SGMII_INT_STATUS ;
 int mv88e6390_serdes_read (struct mv88e6xxx_chip*,int ,int ,int ,int *) ;

__attribute__((used)) static int mv88e6390_serdes_irq_status_sgmii(struct mv88e6xxx_chip *chip,
          u8 lane, u16 *status)
{
 int err;

 err = mv88e6390_serdes_read(chip, lane, MDIO_MMD_PHYXS,
        MV88E6390_SGMII_INT_STATUS, status);

 return err;
}
