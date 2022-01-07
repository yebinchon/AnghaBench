
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct bnx2x {int max_cos; int * prio_to_cos; } ;


 int ASSERT_RTNL () ;
 int BNX2X_ERR (char*,int,...) ;
 int BNX2X_MAX_PRIORITY ;
 int BNX2X_MSG_SP ;
 int BNX2X_NUM_ETH_QUEUES (struct bnx2x*) ;
 int BNX2X_NUM_NON_CNIC_QUEUES (struct bnx2x*) ;
 int DP (int,char*,int,int,...) ;
 int EINVAL ;
 int NETIF_MSG_IFUP ;
 int bnx2x_get_c2s_mapping (struct bnx2x*,int*,int*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int netdev_reset_tc (struct net_device*) ;
 scalar_t__ netdev_set_num_tc (struct net_device*,int) ;
 int netdev_set_prio_tc_map (struct net_device*,int,int ) ;
 int netdev_set_tc_queue (struct net_device*,int,int,int) ;

int bnx2x_setup_tc(struct net_device *dev, u8 num_tc)
{
 struct bnx2x *bp = netdev_priv(dev);
 u8 c2s_map[BNX2X_MAX_PRIORITY], c2s_def;
 int cos, prio, count, offset;


 ASSERT_RTNL();


 if (!num_tc) {
  netdev_reset_tc(dev);
  return 0;
 }


 if (num_tc > bp->max_cos) {
  BNX2X_ERR("support for too many traffic classes requested: %d. Max supported is %d\n",
     num_tc, bp->max_cos);
  return -EINVAL;
 }


 if (netdev_set_num_tc(dev, num_tc)) {
  BNX2X_ERR("failed to declare %d traffic classes\n", num_tc);
  return -EINVAL;
 }

 bnx2x_get_c2s_mapping(bp, c2s_map, &c2s_def);


 for (prio = 0; prio < BNX2X_MAX_PRIORITY; prio++) {
  int outer_prio = c2s_map[prio];

  netdev_set_prio_tc_map(dev, prio, bp->prio_to_cos[outer_prio]);
  DP(BNX2X_MSG_SP | NETIF_MSG_IFUP,
     "mapping priority %d to tc %d\n",
     outer_prio, bp->prio_to_cos[outer_prio]);
 }
 for (cos = 0; cos < bp->max_cos; cos++) {
  count = BNX2X_NUM_ETH_QUEUES(bp);
  offset = cos * BNX2X_NUM_NON_CNIC_QUEUES(bp);
  netdev_set_tc_queue(dev, cos, count, offset);
  DP(BNX2X_MSG_SP | NETIF_MSG_IFUP,
     "mapping tc %d to offset %d count %d\n",
     cos, offset, count);
 }

 return 0;
}
