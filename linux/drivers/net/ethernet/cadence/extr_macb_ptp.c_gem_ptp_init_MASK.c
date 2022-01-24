#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  dev; } ;
struct macb_queue {int /*<<< orphan*/  tx_ts_task; scalar_t__ tx_ts_tail; scalar_t__ tx_ts_head; } ;
struct TYPE_7__ {int /*<<< orphan*/  max_adj; } ;
struct macb {unsigned int num_queues; TYPE_2__* pdev; struct macb_queue* queues; int /*<<< orphan*/  tsu_clk_lock; int /*<<< orphan*/ * ptp_clock; TYPE_3__ ptp_clock_info; TYPE_1__* ptp_info; int /*<<< orphan*/  tsu_rate; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_ptp_max_adj ) () ;int /*<<< orphan*/  (* get_tsu_rate ) (struct macb*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GEM_PTP_TIMER_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ gem_ptp_caps_template ; 
 int /*<<< orphan*/  FUNC4 (struct macb*) ; 
 int /*<<< orphan*/  FUNC5 (struct macb*) ; 
 int /*<<< orphan*/  gem_tx_timestamp_flush ; 
 struct macb* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct macb*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

void FUNC12(struct net_device *dev)
{
	struct macb *bp = FUNC6(dev);
	struct macb_queue *queue;
	unsigned int q;

	bp->ptp_clock_info = gem_ptp_caps_template;

	/* nominal frequency and maximum adjustment in ppb */
	bp->tsu_rate = bp->ptp_info->get_tsu_rate(bp);
	bp->ptp_clock_info.max_adj = bp->ptp_info->get_ptp_max_adj();
	FUNC4(bp);
	bp->ptp_clock = FUNC8(&bp->ptp_clock_info, &dev->dev);
	if (FUNC1(bp->ptp_clock)) {
		FUNC7("ptp clock register failed: %ld\n",
			FUNC2(bp->ptp_clock));
		bp->ptp_clock = NULL;
		return;
	} else if (bp->ptp_clock == NULL) {
		FUNC7("ptp clock register failed\n");
		return;
	}

	FUNC9(&bp->tsu_clk_lock);
	for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
		queue->tx_ts_head = 0;
		queue->tx_ts_tail = 0;
		FUNC0(&queue->tx_ts_task, gem_tx_timestamp_flush);
	}

	FUNC5(bp);

	FUNC3(&bp->pdev->dev, "%s ptp clock registered.\n",
		 GEM_PTP_TIMER_NAME);
}