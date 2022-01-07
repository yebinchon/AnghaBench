
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {scalar_t__ rx_batched; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {scalar_t__ rx_max_coalesced_frames; } ;


 scalar_t__ NAPI_POLL_WEIGHT ;
 struct tun_struct* netdev_priv (struct net_device*) ;

__attribute__((used)) static int tun_set_coalesce(struct net_device *dev,
       struct ethtool_coalesce *ec)
{
 struct tun_struct *tun = netdev_priv(dev);

 if (ec->rx_max_coalesced_frames > NAPI_POLL_WEIGHT)
  tun->rx_batched = NAPI_POLL_WEIGHT;
 else
  tun->rx_batched = ec->rx_max_coalesced_frames;

 return 0;
}
