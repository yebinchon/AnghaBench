
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dev; struct dsa_switch* ds; TYPE_1__* ports; } ;
struct dsa_switch {int dummy; } ;
typedef int phy_interface_t ;
struct TYPE_2__ {int cmode; } ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_UNKNOWN ;
 int LINK_FORCED_DOWN ;
 int LINK_FORCED_UP ;
 int MDIO_MMD_PHYXS ;
 int MV88E6390_SGMII_PHY_STATUS ;
 int MV88E6390_SGMII_PHY_STATUS_DUPLEX_FULL ;
 int MV88E6390_SGMII_PHY_STATUS_LINK ;
 int MV88E6390_SGMII_PHY_STATUS_SPD_DPL_VALID ;



 int MV88E6390_SGMII_PHY_STATUS_SPEED_MASK ;



 int PAUSE_OFF ;
 int PHY_INTERFACE_MODE_1000BASEX ;
 int PHY_INTERFACE_MODE_2500BASEX ;
 int PHY_INTERFACE_MODE_NA ;
 int PHY_INTERFACE_MODE_SGMII ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_2500 ;
 int SPEED_UNKNOWN ;
 int dev_err (int ,char*,...) ;
 int dsa_port_phylink_mac_change (struct dsa_switch*,int,int) ;
 int mv88e6390_serdes_read (struct mv88e6xxx_chip*,int,int ,int ,int*) ;
 int mv88e6xxx_port_setup_mac (struct mv88e6xxx_chip*,int,int,int,int,int ,int ) ;

__attribute__((used)) static void mv88e6390_serdes_irq_link_sgmii(struct mv88e6xxx_chip *chip,
         int port, u8 lane)
{
 u8 cmode = chip->ports[port].cmode;
 struct dsa_switch *ds = chip->ds;
 int duplex = DUPLEX_UNKNOWN;
 int speed = SPEED_UNKNOWN;
 phy_interface_t mode;
 int link, err;
 u16 status;

 err = mv88e6390_serdes_read(chip, lane, MDIO_MMD_PHYXS,
        MV88E6390_SGMII_PHY_STATUS, &status);
 if (err) {
  dev_err(chip->dev, "can't read SGMII PHY status: %d\n", err);
  return;
 }

 link = status & MV88E6390_SGMII_PHY_STATUS_LINK ?
        LINK_FORCED_UP : LINK_FORCED_DOWN;

 if (status & MV88E6390_SGMII_PHY_STATUS_SPD_DPL_VALID) {
  duplex = status & MV88E6390_SGMII_PHY_STATUS_DUPLEX_FULL ?
    DUPLEX_FULL : DUPLEX_HALF;

  switch (status & MV88E6390_SGMII_PHY_STATUS_SPEED_MASK) {
  case 131:
   if (cmode == 129)
    speed = SPEED_2500;
   else
    speed = SPEED_1000;
   break;
  case 132:
   speed = SPEED_100;
   break;
  case 133:
   speed = SPEED_10;
   break;
  default:
   dev_err(chip->dev, "invalid PHY speed\n");
   return;
  }
 }

 switch (cmode) {
 case 128:
  mode = PHY_INTERFACE_MODE_SGMII;
  break;
 case 130:
  mode = PHY_INTERFACE_MODE_1000BASEX;
  break;
 case 129:
  mode = PHY_INTERFACE_MODE_2500BASEX;
  break;
 default:
  mode = PHY_INTERFACE_MODE_NA;
 }

 err = mv88e6xxx_port_setup_mac(chip, port, link, speed, duplex,
           PAUSE_OFF, mode);
 if (err)
  dev_err(chip->dev, "can't propagate PHY settings to MAC: %d\n",
   err);
 else
  dsa_port_phylink_mac_change(ds, port, link == LINK_FORCED_UP);
}
