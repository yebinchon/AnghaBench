
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtnet_info {TYPE_2__* sq; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_max_coalesced_frames; int tx_max_coalesced_frames; int cmd; } ;
typedef int ec_default ;
struct TYPE_3__ {scalar_t__ weight; } ;
struct TYPE_4__ {TYPE_1__ napi; } ;


 int ETHTOOL_GCOALESCE ;
 int memcpy (struct ethtool_coalesce*,struct ethtool_coalesce*,int) ;
 struct virtnet_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int virtnet_get_coalesce(struct net_device *dev,
    struct ethtool_coalesce *ec)
{
 struct ethtool_coalesce ec_default = {
  .cmd = ETHTOOL_GCOALESCE,
  .rx_max_coalesced_frames = 1,
 };
 struct virtnet_info *vi = netdev_priv(dev);

 memcpy(ec, &ec_default, sizeof(ec_default));

 if (vi->sq[0].napi.weight)
  ec->tx_max_coalesced_frames = 1;

 return 0;
}
