
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {scalar_t__ tx_pending; scalar_t__ rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ HNS3_RING_MAX_PENDING ;
 scalar_t__ HNS3_RING_MIN_PENDING ;
 scalar_t__ hns3_nic_resetting (struct net_device*) ;
 int netdev_err (struct net_device*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int hns3_check_ringparam(struct net_device *ndev,
    struct ethtool_ringparam *param)
{
 if (hns3_nic_resetting(ndev))
  return -EBUSY;

 if (param->rx_mini_pending || param->rx_jumbo_pending)
  return -EINVAL;

 if (param->tx_pending > HNS3_RING_MAX_PENDING ||
     param->tx_pending < HNS3_RING_MIN_PENDING ||
     param->rx_pending > HNS3_RING_MAX_PENDING ||
     param->rx_pending < HNS3_RING_MIN_PENDING) {
  netdev_err(ndev, "Queue depth out of range [%d-%d]\n",
      HNS3_RING_MIN_PENDING, HNS3_RING_MAX_PENDING);
  return -EINVAL;
 }

 return 0;
}
