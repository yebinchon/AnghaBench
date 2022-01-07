
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union vxlan_addr {int dummy; } vxlan_addr ;
typedef int u8 ;
struct vxlan_rdst {int dummy; } ;
struct vxlan_fdb {int dummy; } ;
struct TYPE_2__ {scalar_t__ addrmax; } ;
struct vxlan_dev {scalar_t__ addrcnt; int dev; TYPE_1__ cfg; } ;
typedef int __u32 ;
typedef int __u16 ;
typedef int __be32 ;
typedef int __be16 ;


 int ENOMEM ;
 int ENOSPC ;
 int kfree (struct vxlan_fdb*) ;
 int netdev_dbg (int ,char*,int const*,union vxlan_addr*) ;
 struct vxlan_fdb* vxlan_fdb_alloc (struct vxlan_dev*,int const*,int ,int ,int ) ;
 int vxlan_fdb_append (struct vxlan_fdb*,union vxlan_addr*,int ,int ,int ,struct vxlan_rdst**) ;

__attribute__((used)) static int vxlan_fdb_create(struct vxlan_dev *vxlan,
       const u8 *mac, union vxlan_addr *ip,
       __u16 state, __be16 port, __be32 src_vni,
       __be32 vni, __u32 ifindex, __u16 ndm_flags,
       struct vxlan_fdb **fdb)
{
 struct vxlan_rdst *rd = ((void*)0);
 struct vxlan_fdb *f;
 int rc;

 if (vxlan->cfg.addrmax &&
     vxlan->addrcnt >= vxlan->cfg.addrmax)
  return -ENOSPC;

 netdev_dbg(vxlan->dev, "add %pM -> %pIS\n", mac, ip);
 f = vxlan_fdb_alloc(vxlan, mac, state, src_vni, ndm_flags);
 if (!f)
  return -ENOMEM;

 rc = vxlan_fdb_append(f, ip, port, vni, ifindex, &rd);
 if (rc < 0) {
  kfree(f);
  return rc;
 }

 *fdb = f;

 return 0;
}
