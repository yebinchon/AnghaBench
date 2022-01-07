
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {struct dsa_switch* ds; } ;
struct dsa_switch {int dummy; } ;


 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int dsa_port_phylink_mac_change (struct dsa_switch*,int,int) ;
 int mv88e6352_serdes_read (struct mv88e6xxx_chip*,int ,int*) ;

__attribute__((used)) static void mv88e6352_serdes_irq_link(struct mv88e6xxx_chip *chip, int port)
{
 struct dsa_switch *ds = chip->ds;
 u16 status;
 bool up;
 int err;

 err = mv88e6352_serdes_read(chip, MII_BMSR, &status);
 if (err)
  return;





 err = mv88e6352_serdes_read(chip, MII_BMSR, &status);
 if (err)
  return;

 up = status & BMSR_LSTATUS;

 dsa_port_phylink_mac_change(ds, port, up);
}
