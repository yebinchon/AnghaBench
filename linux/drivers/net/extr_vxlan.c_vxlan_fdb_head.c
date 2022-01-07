
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vxlan_dev {struct hlist_head* fdb_head; } ;
struct hlist_head {int dummy; } ;
typedef int __be32 ;


 size_t fdb_head_index (struct vxlan_dev*,int const*,int ) ;

__attribute__((used)) static inline struct hlist_head *vxlan_fdb_head(struct vxlan_dev *vxlan,
      const u8 *mac, __be32 vni)
{
 return &vxlan->fdb_head[fdb_head_index(vxlan, mac, vni)];
}
