
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_obj_port_mdb {scalar_t__ vid; int addr; } ;
struct ksz_device {int num_statics; TYPE_1__* dev_ops; } ;
struct dsa_switch {struct ksz_device* priv; } ;
struct alu_struct {scalar_t__ fid; int is_static; int is_use_fid; int port_forward; int mac; } ;
typedef int alu ;
struct TYPE_2__ {int (* w_sta_mac_table ) (struct ksz_device*,int,struct alu_struct*) ;int (* r_sta_mac_table ) (struct ksz_device*,int,struct alu_struct*) ;} ;


 int BIT (int) ;
 int ETH_ALEN ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct alu_struct*,int ,int) ;
 int stub1 (struct ksz_device*,int,struct alu_struct*) ;
 int stub2 (struct ksz_device*,int,struct alu_struct*) ;

void ksz_port_mdb_add(struct dsa_switch *ds, int port,
        const struct switchdev_obj_port_mdb *mdb)
{
 struct ksz_device *dev = ds->priv;
 struct alu_struct alu;
 int index;
 int empty = 0;

 alu.port_forward = 0;
 for (index = 0; index < dev->num_statics; index++) {
  if (!dev->dev_ops->r_sta_mac_table(dev, index, &alu)) {

   if (!memcmp(alu.mac, mdb->addr, ETH_ALEN) &&
       alu.fid == mdb->vid)
    break;

  } else if (!empty) {
   empty = index + 1;
  }
 }


 if (index == dev->num_statics && !empty)
  return;


 if (index == dev->num_statics) {
  index = empty - 1;
  memset(&alu, 0, sizeof(alu));
  memcpy(alu.mac, mdb->addr, ETH_ALEN);
  alu.is_static = 1;
 }
 alu.port_forward |= BIT(port);
 if (mdb->vid) {
  alu.is_use_fid = 1;


  alu.fid = mdb->vid;
 }
 dev->dev_ops->w_sta_mac_table(dev, index, &alu);
}
