
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlan ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct mv88e6xxx_vtu_entry {scalar_t__ vid; int valid; scalar_t__* member; int fid; } ;
struct mv88e6xxx_chip {int dev; } ;


 int EOPNOTSUPP ;
 scalar_t__ MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER ;
 int dev_info (int ,char*,int,scalar_t__) ;
 int memset (struct mv88e6xxx_vtu_entry*,int ,int) ;
 int mv88e6xxx_atu_new (struct mv88e6xxx_chip*,int *) ;
 int mv88e6xxx_broadcast_setup (struct mv88e6xxx_chip*,scalar_t__) ;
 int mv88e6xxx_num_ports (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_vtu_getnext (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;
 int mv88e6xxx_vtu_loadpurge (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;

__attribute__((used)) static int mv88e6xxx_port_vlan_join(struct mv88e6xxx_chip *chip, int port,
        u16 vid, u8 member)
{
 const u8 non_member = MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER;
 struct mv88e6xxx_vtu_entry vlan;
 int i, err;

 if (!vid)
  return -EOPNOTSUPP;

 vlan.vid = vid - 1;
 vlan.valid = 0;

 err = mv88e6xxx_vtu_getnext(chip, &vlan);
 if (err)
  return err;

 if (vlan.vid != vid || !vlan.valid) {
  memset(&vlan, 0, sizeof(vlan));

  err = mv88e6xxx_atu_new(chip, &vlan.fid);
  if (err)
   return err;

  for (i = 0; i < mv88e6xxx_num_ports(chip); ++i)
   if (i == port)
    vlan.member[i] = member;
   else
    vlan.member[i] = non_member;

  vlan.vid = vid;
  vlan.valid = 1;

  err = mv88e6xxx_vtu_loadpurge(chip, &vlan);
  if (err)
   return err;

  err = mv88e6xxx_broadcast_setup(chip, vlan.vid);
  if (err)
   return err;
 } else if (vlan.member[port] != member) {
  vlan.member[port] = member;

  err = mv88e6xxx_vtu_loadpurge(chip, &vlan);
  if (err)
   return err;
 } else {
  dev_info(chip->dev, "p%d: already a member of VLAN %d\n",
    port, vid);
 }

 return 0;
}
