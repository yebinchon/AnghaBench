#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct mt76x02_tx_status {int valid; int success; int aggr; int ack_req; void* pktid; void* retry; void* rate; void* wcid; } ;
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_TX_STAT_FIFO ; 
 int MT_TX_STAT_FIFO_ACKREQ ; 
 int MT_TX_STAT_FIFO_AGGR ; 
 int /*<<< orphan*/  MT_TX_STAT_FIFO_EXT ; 
 int /*<<< orphan*/  MT_TX_STAT_FIFO_EXT_PKTID ; 
 int /*<<< orphan*/  MT_TX_STAT_FIFO_EXT_RETRY ; 
 int /*<<< orphan*/  MT_TX_STAT_FIFO_RATE ; 
 int MT_TX_STAT_FIFO_SUCCESS ; 
 int MT_TX_STAT_FIFO_VALID ; 
 int /*<<< orphan*/  MT_TX_STAT_FIFO_WCID ; 
 int FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,struct mt76x02_tx_status*) ; 

bool FUNC3(struct mt76x02_dev *dev,
				struct mt76x02_tx_status *stat)
{
	u32 stat1, stat2;

	stat2 = FUNC1(dev, MT_TX_STAT_FIFO_EXT);
	stat1 = FUNC1(dev, MT_TX_STAT_FIFO);

	stat->valid = !!(stat1 & MT_TX_STAT_FIFO_VALID);
	if (!stat->valid)
		return false;

	stat->success = !!(stat1 & MT_TX_STAT_FIFO_SUCCESS);
	stat->aggr = !!(stat1 & MT_TX_STAT_FIFO_AGGR);
	stat->ack_req = !!(stat1 & MT_TX_STAT_FIFO_ACKREQ);
	stat->wcid = FUNC0(MT_TX_STAT_FIFO_WCID, stat1);
	stat->rate = FUNC0(MT_TX_STAT_FIFO_RATE, stat1);

	stat->retry = FUNC0(MT_TX_STAT_FIFO_EXT_RETRY, stat2);
	stat->pktid = FUNC0(MT_TX_STAT_FIFO_EXT_PKTID, stat2);

	FUNC2(dev, stat);

	return true;
}