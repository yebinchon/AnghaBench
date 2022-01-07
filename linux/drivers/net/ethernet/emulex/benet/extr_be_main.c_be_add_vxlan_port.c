
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_tunnel_info {int dummy; } ;
struct net_device {int dummy; } ;


 int be_cfg_vxlan_port (struct net_device*,struct udp_tunnel_info*,int ) ;
 int be_work_add_vxlan_port ;

__attribute__((used)) static void be_add_vxlan_port(struct net_device *netdev,
         struct udp_tunnel_info *ti)
{
 be_cfg_vxlan_port(netdev, ti, be_work_add_vxlan_port);
}
