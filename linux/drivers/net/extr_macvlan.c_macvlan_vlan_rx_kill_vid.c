
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct macvlan_dev {struct net_device* lowerdev; } ;
typedef int __be16 ;


 struct macvlan_dev* netdev_priv (struct net_device*) ;
 int vlan_vid_del (struct net_device*,int ,int ) ;

__attribute__((used)) static int macvlan_vlan_rx_kill_vid(struct net_device *dev,
        __be16 proto, u16 vid)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct net_device *lowerdev = vlan->lowerdev;

 vlan_vid_del(lowerdev, proto, vid);
 return 0;
}
