
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_rdst {int rcu; int list; } ;
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int dummy; } ;


 int RTM_DELNEIGH ;
 int call_rcu (int *,int ) ;
 int list_del_rcu (int *) ;
 int vxlan_dst_free ;
 int vxlan_fdb_notify (struct vxlan_dev*,struct vxlan_fdb*,struct vxlan_rdst*,int ,int,int *) ;

__attribute__((used)) static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,
      struct vxlan_rdst *rd, bool swdev_notify)
{
 list_del_rcu(&rd->list);
 vxlan_fdb_notify(vxlan, f, rd, RTM_DELNEIGH, swdev_notify, ((void*)0));
 call_rcu(&rd->rcu, vxlan_dst_free);
}
