
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mv88e6xxx_vtu_entry {scalar_t__ vid; int valid; scalar_t__* member; int fid; } ;
struct mv88e6xxx_chip {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER ;
 int mv88e6xxx_g1_atu_remove (struct mv88e6xxx_chip*,int ,int,int) ;
 int mv88e6xxx_num_ports (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_vtu_getnext (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;
 int mv88e6xxx_vtu_loadpurge (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;

__attribute__((used)) static int mv88e6xxx_port_vlan_leave(struct mv88e6xxx_chip *chip,
         int port, u16 vid)
{
 struct mv88e6xxx_vtu_entry vlan;
 int i, err;

 if (!vid)
  return -EOPNOTSUPP;

 vlan.vid = vid - 1;
 vlan.valid = 0;

 err = mv88e6xxx_vtu_getnext(chip, &vlan);
 if (err)
  return err;




 if (vlan.vid != vid || !vlan.valid ||
     vlan.member[port] == MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER)
  return -EOPNOTSUPP;

 vlan.member[port] = MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER;


 vlan.valid = 0;
 for (i = 0; i < mv88e6xxx_num_ports(chip); ++i) {
  if (vlan.member[i] !=
      MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER) {
   vlan.valid = 1;
   break;
  }
 }

 err = mv88e6xxx_vtu_loadpurge(chip, &vlan);
 if (err)
  return err;

 return mv88e6xxx_g1_atu_remove(chip, vlan.fid, port, 0);
}
