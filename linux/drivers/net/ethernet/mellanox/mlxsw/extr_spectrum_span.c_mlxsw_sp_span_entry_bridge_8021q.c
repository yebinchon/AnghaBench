
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef struct net_device const net_device ;
struct bridge_vlan_info {int flags; } ;


 int BRIDGE_VLAN_INFO_BRENTRY ;
 int BRIDGE_VLAN_INFO_UNTAGGED ;
 scalar_t__ WARN_ON (int ) ;
 struct net_device const* br_fdb_find_port (struct net_device const*,unsigned char*,scalar_t__) ;
 scalar_t__ br_vlan_get_info (struct net_device const*,scalar_t__,struct bridge_vlan_info*) ;
 int br_vlan_get_pvid (struct net_device const*,scalar_t__*) ;

__attribute__((used)) static struct net_device *
mlxsw_sp_span_entry_bridge_8021q(const struct net_device *br_dev,
     unsigned char *dmac,
     u16 *p_vid)
{
 struct bridge_vlan_info vinfo;
 struct net_device *edev;
 u16 vid = *p_vid;

 if (!vid && WARN_ON(br_vlan_get_pvid(br_dev, &vid)))
  return ((void*)0);
 if (!vid ||
     br_vlan_get_info(br_dev, vid, &vinfo) ||
     !(vinfo.flags & BRIDGE_VLAN_INFO_BRENTRY))
  return ((void*)0);

 edev = br_fdb_find_port(br_dev, dmac, vid);
 if (!edev)
  return ((void*)0);

 if (br_vlan_get_info(edev, vid, &vinfo))
  return ((void*)0);
 if (vinfo.flags & BRIDGE_VLAN_INFO_UNTAGGED)
  *p_vid = 0;
 else
  *p_vid = vid;
 return edev;
}
