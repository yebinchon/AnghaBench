
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj_port_mdb {int vid; int addr; } ;
struct dsa_switch {int dummy; } ;


 int sja1105_fdb_add (struct dsa_switch*,int,int ,int ) ;

__attribute__((used)) static void sja1105_mdb_add(struct dsa_switch *ds, int port,
       const struct switchdev_obj_port_mdb *mdb)
{
 sja1105_fdb_add(ds, port, mdb->addr, mdb->vid);
}
