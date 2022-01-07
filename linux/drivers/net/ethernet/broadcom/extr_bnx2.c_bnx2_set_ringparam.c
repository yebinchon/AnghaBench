
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; } ;
struct bnx2 {int dummy; } ;


 int BNX2_MAX_TOTAL_RX_DESC_CNT ;
 int BNX2_MAX_TX_DESC_CNT ;
 int EINVAL ;
 int MAX_SKB_FRAGS ;
 int bnx2_change_ring_size (struct bnx2*,int ,int ,int) ;
 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
bnx2_set_ringparam(struct net_device *dev, struct ethtool_ringparam *ering)
{
 struct bnx2 *bp = netdev_priv(dev);
 int rc;

 if ((ering->rx_pending > BNX2_MAX_TOTAL_RX_DESC_CNT) ||
  (ering->tx_pending > BNX2_MAX_TX_DESC_CNT) ||
  (ering->tx_pending <= MAX_SKB_FRAGS)) {

  return -EINVAL;
 }
 rc = bnx2_change_ring_size(bp, ering->rx_pending, ering->tx_pending,
       0);
 return rc;
}
