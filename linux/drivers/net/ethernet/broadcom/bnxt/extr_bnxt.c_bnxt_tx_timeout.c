
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnxt {int sp_event; int dev; } ;


 int BNXT_RESET_TASK_SP_EVENT ;
 int bnxt_queue_sp_work (struct bnxt*) ;
 int netdev_err (int ,char*) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void bnxt_tx_timeout(struct net_device *dev)
{
 struct bnxt *bp = netdev_priv(dev);

 netdev_err(bp->dev, "TX timeout detected, starting reset task!\n");
 set_bit(BNXT_RESET_TASK_SP_EVENT, &bp->sp_event);
 bnxt_queue_sp_work(bp);
}
