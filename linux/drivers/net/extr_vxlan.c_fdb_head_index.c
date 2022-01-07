
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int flags; } ;
struct vxlan_dev {TYPE_1__ cfg; } ;
typedef int __be32 ;


 int VXLAN_F_COLLECT_METADATA ;
 int eth_hash (int const*) ;
 int eth_vni_hash (int const*,int ) ;

__attribute__((used)) static u32 fdb_head_index(struct vxlan_dev *vxlan, const u8 *mac, __be32 vni)
{
 if (vxlan->cfg.flags & VXLAN_F_COLLECT_METADATA)
  return eth_vni_hash(mac, vni);
 else
  return eth_hash(mac);
}
