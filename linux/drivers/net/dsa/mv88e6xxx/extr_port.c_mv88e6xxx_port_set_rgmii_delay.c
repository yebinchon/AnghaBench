
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dev; } ;
typedef int phy_interface_t ;


 int MV88E6XXX_PORT_MAC_CTL ;
 int MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK ;
 int MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK ;




 int dev_dbg (int ,char*,int,char*,char*) ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;

__attribute__((used)) static int mv88e6xxx_port_set_rgmii_delay(struct mv88e6xxx_chip *chip, int port,
       phy_interface_t mode)
{
 u16 reg;
 int err;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_MAC_CTL, &reg);
 if (err)
  return err;

 reg &= ~(MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK |
   MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK);

 switch (mode) {
 case 129:
  reg |= MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK;
  break;
 case 128:
  reg |= MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK;
  break;
 case 130:
  reg |= MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK |
   MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK;
  break;
 case 131:
  break;
 default:
  return 0;
 }

 err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_MAC_CTL, reg);
 if (err)
  return err;

 dev_dbg(chip->dev, "p%d: delay RXCLK %s, TXCLK %s\n", port,
  reg & MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK ? "yes" : "no",
  reg & MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK ? "yes" : "no");

 return 0;
}
