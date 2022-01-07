
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink_link_state {int speed; int duplex; int link; int interface; int advertising; } ;
struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {int dev; struct mv88e6xxx_chip* priv; } ;


 int DUPLEX_UNFORCED ;
 int EOPNOTSUPP ;
 int LINK_FORCED_UP ;
 int LINK_UNFORCED ;
 unsigned int MLO_AN_FIXED ;
 unsigned int MLO_AN_PHY ;
 int Pause ;
 int SPEED_UNFORCED ;
 int dev_err (int ,char*,int) ;
 scalar_t__ mv88e6xxx_phy_is_internal (struct dsa_switch*,int) ;
 int mv88e6xxx_port_setup_mac (struct mv88e6xxx_chip*,int,int,int,int,int,int ) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int phylink_test (int ,int ) ;

__attribute__((used)) static void mv88e6xxx_mac_config(struct dsa_switch *ds, int port,
     unsigned int mode,
     const struct phylink_link_state *state)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 int speed, duplex, link, pause, err;

 if ((mode == MLO_AN_PHY) && mv88e6xxx_phy_is_internal(ds, port))
  return;

 if (mode == MLO_AN_FIXED) {
  link = LINK_FORCED_UP;
  speed = state->speed;
  duplex = state->duplex;
 } else if (!mv88e6xxx_phy_is_internal(ds, port)) {
  link = state->link;
  speed = state->speed;
  duplex = state->duplex;
 } else {
  speed = SPEED_UNFORCED;
  duplex = DUPLEX_UNFORCED;
  link = LINK_UNFORCED;
 }
 pause = !!phylink_test(state->advertising, Pause);

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_port_setup_mac(chip, port, link, speed, duplex, pause,
           state->interface);
 mv88e6xxx_reg_unlock(chip);

 if (err && err != -EOPNOTSUPP)
  dev_err(ds->dev, "p%d: failed to configure MAC\n", port);
}
