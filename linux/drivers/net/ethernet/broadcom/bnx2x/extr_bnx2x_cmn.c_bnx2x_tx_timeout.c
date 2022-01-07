
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2x {int panic; } ;


 int BNX2X_SP_RTNL_TX_TIMEOUT ;
 int bnx2x_panic () ;
 int bnx2x_panic_dump (struct bnx2x*,int) ;
 int bnx2x_schedule_sp_rtnl (struct bnx2x*,int ,int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

void bnx2x_tx_timeout(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);




 if (!bp->panic)

  bnx2x_panic_dump(bp, 0);





 bnx2x_schedule_sp_rtnl(bp, BNX2X_SP_RTNL_TX_TIMEOUT, 0);
}
