#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ consume_idx; scalar_t__ count; } ;
struct emac_rx_queue {TYPE_1__ rrd; } ;
struct emac_rrd {int /*<<< orphan*/ * word; } ;
struct emac_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  rrd_size; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct emac_rx_queue*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct emac_rrd*) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_rrd*) ; 
 int /*<<< orphan*/  FUNC3 (struct emac_rrd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct emac_adapter *adpt,
				struct emac_rx_queue *rx_q,
				struct emac_rrd *rrd)
{
	u32 *hw_rrd = FUNC0(rx_q, adpt->rrd_size, rx_q->rrd.consume_idx);

	rrd->word[3] = *(hw_rrd + 3);

	if (!FUNC2(rrd))
		return false;

	rrd->word[4] = 0;
	rrd->word[5] = 0;

	rrd->word[0] = *(hw_rrd++);
	rrd->word[1] = *(hw_rrd++);
	rrd->word[2] = *(hw_rrd++);

	if (FUNC5(FUNC1(rrd) != 1)) {
		FUNC4(adpt->netdev,
			   "error: multi-RFD not support yet! nor:%lu\n",
			   FUNC1(rrd));
	}

	/* mark rrd as processed */
	FUNC3(rrd, 0);
	*hw_rrd = rrd->word[3];

	if (++rx_q->rrd.consume_idx == rx_q->rrd.count)
		rx_q->rrd.consume_idx = 0;

	return true;
}