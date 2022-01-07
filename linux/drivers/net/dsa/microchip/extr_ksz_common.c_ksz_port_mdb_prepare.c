
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj_port_mdb {int dummy; } ;
struct dsa_switch {int dummy; } ;



int ksz_port_mdb_prepare(struct dsa_switch *ds, int port,
    const struct switchdev_obj_port_mdb *mdb)
{

 return 0;
}
