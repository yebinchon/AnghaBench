
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int ocelot_vlan_vid_del (struct net_device*,int ) ;

__attribute__((used)) static int ocelot_vlan_rx_kill_vid(struct net_device *dev, __be16 proto,
       u16 vid)
{
 return ocelot_vlan_vid_del(dev, vid);
}
