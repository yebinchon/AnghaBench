
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2 {int reset_task; } ;


 int bnx2_dump_ftq (struct bnx2*) ;
 int bnx2_dump_mcp_state (struct bnx2*) ;
 int bnx2_dump_state (struct bnx2*) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void
bnx2_tx_timeout(struct net_device *dev)
{
 struct bnx2 *bp = netdev_priv(dev);

 bnx2_dump_ftq(bp);
 bnx2_dump_state(bp);
 bnx2_dump_mcp_state(bp);


 schedule_work(&bp->reset_task);
}
