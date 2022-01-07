
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2x {scalar_t__ state; } ;


 int BNX2X_SP_RTNL_RX_MODE ;
 scalar_t__ BNX2X_STATE_OPEN ;
 int DP (int ,char*,scalar_t__) ;
 int NETIF_MSG_IFUP ;
 int bnx2x_schedule_sp_rtnl (struct bnx2x*,int ,int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bnx2x_set_rx_mode(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);

 if (bp->state != BNX2X_STATE_OPEN) {
  DP(NETIF_MSG_IFUP, "state is %x, returning\n", bp->state);
  return;
 } else {

  bnx2x_schedule_sp_rtnl(bp, BNX2X_SP_RTNL_RX_MODE,
           NETIF_MSG_IFUP);
 }
}
