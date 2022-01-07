
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mv88e6xxx_vtu_entry {scalar_t__ vid; int valid; int fid; } ;
struct mv88e6xxx_chip {TYPE_1__* info; } ;
typedef int dsa_fdb_dump_cb_t ;
struct TYPE_2__ {scalar_t__ max_vid; } ;


 int mv88e6xxx_port_db_dump_fid (struct mv88e6xxx_chip*,int ,scalar_t__,int,int *,void*) ;
 int mv88e6xxx_port_get_fid (struct mv88e6xxx_chip*,int,int *) ;
 int mv88e6xxx_vtu_getnext (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;

__attribute__((used)) static int mv88e6xxx_port_db_dump(struct mv88e6xxx_chip *chip, int port,
      dsa_fdb_dump_cb_t *cb, void *data)
{
 struct mv88e6xxx_vtu_entry vlan;
 u16 fid;
 int err;


 err = mv88e6xxx_port_get_fid(chip, port, &fid);
 if (err)
  return err;

 err = mv88e6xxx_port_db_dump_fid(chip, fid, 0, port, cb, data);
 if (err)
  return err;


 vlan.vid = chip->info->max_vid;
 vlan.valid = 0;

 do {
  err = mv88e6xxx_vtu_getnext(chip, &vlan);
  if (err)
   return err;

  if (!vlan.valid)
   break;

  err = mv88e6xxx_port_db_dump_fid(chip, vlan.fid, vlan.vid, port,
       cb, data);
  if (err)
   return err;
 } while (vlan.vid < chip->info->max_vid);

 return err;
}
