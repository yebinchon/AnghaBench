
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_rdst {int dummy; } ;
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;




 int __vxlan_fdb_notify (struct vxlan_dev*,struct vxlan_fdb*,struct vxlan_rdst*,int) ;
 int vxlan_fdb_switchdev_call_notifiers (struct vxlan_dev*,struct vxlan_fdb*,struct vxlan_rdst*,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int vxlan_fdb_notify(struct vxlan_dev *vxlan, struct vxlan_fdb *fdb,
       struct vxlan_rdst *rd, int type, bool swdev_notify,
       struct netlink_ext_ack *extack)
{
 int err;

 if (swdev_notify) {
  switch (type) {
  case 128:
   err = vxlan_fdb_switchdev_call_notifiers(vxlan, fdb, rd,
         1, extack);
   if (err)
    return err;
   break;
  case 129:
   vxlan_fdb_switchdev_call_notifiers(vxlan, fdb, rd,
          0, extack);
   break;
  }
 }

 __vxlan_fdb_notify(vxlan, fdb, rd, type);
 return 0;
}
