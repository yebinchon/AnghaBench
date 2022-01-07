
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vxlan_fdb {int hlist; } ;
struct vxlan_dev {int addrcnt; } ;
typedef int __be32 ;


 int hlist_add_head_rcu (int *,int ) ;
 int vxlan_fdb_head (struct vxlan_dev*,int const*,int ) ;

__attribute__((used)) static void vxlan_fdb_insert(struct vxlan_dev *vxlan, const u8 *mac,
        __be32 src_vni, struct vxlan_fdb *f)
{
 ++vxlan->addrcnt;
 hlist_add_head_rcu(&f->hlist,
      vxlan_fdb_head(vxlan, mac, src_vni));
}
