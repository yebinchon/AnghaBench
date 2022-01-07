
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_obj_port_vlan {int vid_end; int vid_begin; } ;
struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
struct TYPE_2__ {int max_vid; } ;


 int EOPNOTSUPP ;
 int mv88e6xxx_port_check_hw_vlan (struct dsa_switch*,int,int ,int ) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int
mv88e6xxx_port_vlan_prepare(struct dsa_switch *ds, int port,
       const struct switchdev_obj_port_vlan *vlan)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 int err;

 if (!chip->info->max_vid)
  return -EOPNOTSUPP;




 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_port_check_hw_vlan(ds, port, vlan->vid_begin,
        vlan->vid_end);
 mv88e6xxx_reg_unlock(chip);




 return err;
}
