
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dev; } ;
struct macb_queue {int tx_ts_task; scalar_t__ tx_ts_tail; scalar_t__ tx_ts_head; } ;
struct TYPE_7__ {int max_adj; } ;
struct macb {unsigned int num_queues; TYPE_2__* pdev; struct macb_queue* queues; int tsu_clk_lock; int * ptp_clock; TYPE_3__ ptp_clock_info; TYPE_1__* ptp_info; int tsu_rate; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int (* get_ptp_max_adj ) () ;int (* get_tsu_rate ) (struct macb*) ;} ;


 int GEM_PTP_TIMER_NAME ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_info (int *,char*,int ) ;
 TYPE_3__ gem_ptp_caps_template ;
 int gem_ptp_init_timer (struct macb*) ;
 int gem_ptp_init_tsu (struct macb*) ;
 int gem_tx_timestamp_flush ;
 struct macb* netdev_priv (struct net_device*) ;
 int pr_err (char*,...) ;
 int * ptp_clock_register (TYPE_3__*,int *) ;
 int spin_lock_init (int *) ;
 int stub1 (struct macb*) ;
 int stub2 () ;

void gem_ptp_init(struct net_device *dev)
{
 struct macb *bp = netdev_priv(dev);
 struct macb_queue *queue;
 unsigned int q;

 bp->ptp_clock_info = gem_ptp_caps_template;


 bp->tsu_rate = bp->ptp_info->get_tsu_rate(bp);
 bp->ptp_clock_info.max_adj = bp->ptp_info->get_ptp_max_adj();
 gem_ptp_init_timer(bp);
 bp->ptp_clock = ptp_clock_register(&bp->ptp_clock_info, &dev->dev);
 if (IS_ERR(bp->ptp_clock)) {
  pr_err("ptp clock register failed: %ld\n",
   PTR_ERR(bp->ptp_clock));
  bp->ptp_clock = ((void*)0);
  return;
 } else if (bp->ptp_clock == ((void*)0)) {
  pr_err("ptp clock register failed\n");
  return;
 }

 spin_lock_init(&bp->tsu_clk_lock);
 for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
  queue->tx_ts_head = 0;
  queue->tx_ts_tail = 0;
  INIT_WORK(&queue->tx_ts_task, gem_tx_timestamp_flush);
 }

 gem_ptp_init_tsu(bp);

 dev_info(&bp->pdev->dev, "%s ptp clock registered.\n",
   GEM_PTP_TIMER_NAME);
}
