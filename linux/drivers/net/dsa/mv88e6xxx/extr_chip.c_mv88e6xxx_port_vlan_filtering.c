
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
struct TYPE_2__ {int max_vid; } ;


 int EOPNOTSUPP ;
 int MV88E6XXX_PORT_CTL2_8021Q_MODE_DISABLED ;
 int MV88E6XXX_PORT_CTL2_8021Q_MODE_SECURE ;
 int mv88e6xxx_port_set_8021q_mode (struct mv88e6xxx_chip*,int,int ) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_port_vlan_filtering(struct dsa_switch *ds, int port,
      bool vlan_filtering)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 u16 mode = vlan_filtering ? MV88E6XXX_PORT_CTL2_8021Q_MODE_SECURE :
  MV88E6XXX_PORT_CTL2_8021Q_MODE_DISABLED;
 int err;

 if (!chip->info->max_vid)
  return -EOPNOTSUPP;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_port_set_8021q_mode(chip, port, mode);
 mv88e6xxx_reg_unlock(chip);

 return err;
}
