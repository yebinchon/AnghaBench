
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int rx_batched; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_max_coalesced_frames; } ;


 struct tun_struct* netdev_priv (struct net_device*) ;

__attribute__((used)) static int tun_get_coalesce(struct net_device *dev,
       struct ethtool_coalesce *ec)
{
 struct tun_struct *tun = netdev_priv(dev);

 ec->rx_max_coalesced_frames = tun->rx_batched;

 return 0;
}
