
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct switchdev_obj_port_vlan {int flags; scalar_t__ vid_begin; scalar_t__ vid_end; } ;
struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct dsa_switch {int dev; struct mv88e6xxx_chip* priv; } ;
struct TYPE_2__ {int max_vid; } ;


 int BRIDGE_VLAN_INFO_PVID ;
 int BRIDGE_VLAN_INFO_UNTAGGED ;
 int MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_TAGGED ;
 int MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_UNMODIFIED ;
 int MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_UNTAGGED ;
 int dev_err (int ,char*,int,scalar_t__,...) ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,int) ;
 scalar_t__ dsa_is_dsa_port (struct dsa_switch*,int) ;
 scalar_t__ mv88e6xxx_port_set_pvid (struct mv88e6xxx_chip*,int,scalar_t__) ;
 scalar_t__ mv88e6xxx_port_vlan_join (struct mv88e6xxx_chip*,int,scalar_t__,int ) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static void mv88e6xxx_port_vlan_add(struct dsa_switch *ds, int port,
        const struct switchdev_obj_port_vlan *vlan)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 bool untagged = vlan->flags & BRIDGE_VLAN_INFO_UNTAGGED;
 bool pvid = vlan->flags & BRIDGE_VLAN_INFO_PVID;
 u8 member;
 u16 vid;

 if (!chip->info->max_vid)
  return;

 if (dsa_is_dsa_port(ds, port) || dsa_is_cpu_port(ds, port))
  member = MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_UNMODIFIED;
 else if (untagged)
  member = MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_UNTAGGED;
 else
  member = MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_TAGGED;

 mv88e6xxx_reg_lock(chip);

 for (vid = vlan->vid_begin; vid <= vlan->vid_end; ++vid)
  if (mv88e6xxx_port_vlan_join(chip, port, vid, member))
   dev_err(ds->dev, "p%d: failed to add VLAN %d%c\n", port,
    vid, untagged ? 'u' : 't');

 if (pvid && mv88e6xxx_port_set_pvid(chip, port, vlan->vid_end))
  dev_err(ds->dev, "p%d: failed to set PVID %d\n", port,
   vlan->vid_end);

 mv88e6xxx_reg_unlock(chip);
}
