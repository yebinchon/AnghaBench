
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct bnx2 {int * stats_blk; int * status_blk; int status_blk_mapping; int status_stats_size; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
bnx2_free_stats_blk(struct net_device *dev)
{
 struct bnx2 *bp = netdev_priv(dev);

 if (bp->status_blk) {
  dma_free_coherent(&bp->pdev->dev, bp->status_stats_size,
      bp->status_blk,
      bp->status_blk_mapping);
  bp->status_blk = ((void*)0);
  bp->stats_blk = ((void*)0);
 }
}
