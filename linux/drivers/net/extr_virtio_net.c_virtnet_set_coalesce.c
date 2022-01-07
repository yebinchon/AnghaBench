
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtnet_info {int max_queue_pairs; TYPE_2__* sq; } ;
struct net_device {int flags; } ;
struct ethtool_coalesce {int rx_max_coalesced_frames; int tx_max_coalesced_frames; int cmd; } ;
typedef int ec_default ;
struct TYPE_3__ {int weight; } ;
struct TYPE_4__ {TYPE_1__ napi; } ;


 int EBUSY ;
 int EINVAL ;
 int ETHTOOL_SCOALESCE ;
 int IFF_UP ;
 int NAPI_POLL_WEIGHT ;
 scalar_t__ memcmp (struct ethtool_coalesce*,struct ethtool_coalesce*,int) ;
 struct virtnet_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int virtnet_set_coalesce(struct net_device *dev,
    struct ethtool_coalesce *ec)
{
 struct ethtool_coalesce ec_default = {
  .cmd = ETHTOOL_SCOALESCE,
  .rx_max_coalesced_frames = 1,
 };
 struct virtnet_info *vi = netdev_priv(dev);
 int i, napi_weight;

 if (ec->tx_max_coalesced_frames > 1)
  return -EINVAL;

 ec_default.tx_max_coalesced_frames = ec->tx_max_coalesced_frames;
 napi_weight = ec->tx_max_coalesced_frames ? NAPI_POLL_WEIGHT : 0;


 if (memcmp(ec, &ec_default, sizeof(ec_default)))
  return -EINVAL;

 if (napi_weight ^ vi->sq[0].napi.weight) {
  if (dev->flags & IFF_UP)
   return -EBUSY;
  for (i = 0; i < vi->max_queue_pairs; i++)
   vi->sq[i].napi.weight = napi_weight;
 }

 return 0;
}
