
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vxlan_fdb {scalar_t__ used; } ;
struct vxlan_dev {int dummy; } ;
typedef int __be32 ;


 struct vxlan_fdb* __vxlan_find_mac (struct vxlan_dev*,int const*,int ) ;
 scalar_t__ jiffies ;

__attribute__((used)) static struct vxlan_fdb *vxlan_find_mac(struct vxlan_dev *vxlan,
     const u8 *mac, __be32 vni)
{
 struct vxlan_fdb *f;

 f = __vxlan_find_mac(vxlan, mac, vni);
 if (f && f->used != jiffies)
  f->used = jiffies;

 return f;
}
