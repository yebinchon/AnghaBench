
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int __bdx_vlan_rx_vid (struct net_device*,int ,int ) ;

__attribute__((used)) static int bdx_vlan_rx_kill_vid(struct net_device *ndev, __be16 proto, u16 vid)
{
 __bdx_vlan_rx_vid(ndev, vid, 0);
 return 0;
}
