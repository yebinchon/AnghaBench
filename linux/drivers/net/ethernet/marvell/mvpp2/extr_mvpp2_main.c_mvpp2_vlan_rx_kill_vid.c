
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mvpp2_port {int dummy; } ;
typedef int __be16 ;


 int mvpp2_prs_vid_entry_remove (struct mvpp2_port*,int ) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mvpp2_vlan_rx_kill_vid(struct net_device *dev, __be16 proto, u16 vid)
{
 struct mvpp2_port *port = netdev_priv(dev);

 mvpp2_prs_vid_entry_remove(port, vid);
 return 0;
}
