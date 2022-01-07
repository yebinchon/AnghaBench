
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct bridge_vlan_info {int flags; } ;


 int BRIDGE_VLAN_INFO_UNTAGGED ;
 int br_vlan_get_info (struct net_device const*,scalar_t__,struct bridge_vlan_info*) ;
 int br_vlan_get_pvid (struct net_device const*,scalar_t__*) ;

__attribute__((used)) static inline int
mlxsw_sp_vxlan_mapped_vid(const struct net_device *vxlan_dev, u16 *p_vid)
{
 struct bridge_vlan_info vinfo;
 u16 vid = 0;
 int err;

 err = br_vlan_get_pvid(vxlan_dev, &vid);
 if (err || !vid)
  goto out;

 err = br_vlan_get_info(vxlan_dev, vid, &vinfo);
 if (err || !(vinfo.flags & BRIDGE_VLAN_INFO_UNTAGGED))
  vid = 0;

out:
 *p_vid = vid;
 return err;
}
