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
struct xgbe_prv_data {unsigned int pfc_rfa; int /*<<< orphan*/  netdev; int /*<<< orphan*/ * pfcq; int /*<<< orphan*/  rx_q_count; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int XGMAC_FIFO_UNIT ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,unsigned int*) ; 
 unsigned int FUNC5 (struct xgbe_prv_data*) ; 
 unsigned int FUNC6 (struct xgbe_prv_data*) ; 
 unsigned int FUNC7 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC8(struct xgbe_prv_data *pdata,
				    unsigned int fifo_size,
				    unsigned int *fifo)
{
	unsigned int q_fifo_size, rem_fifo, addn_fifo;
	unsigned int prio_queues;
	unsigned int pfc_count;
	unsigned int i;

	q_fifo_size = FUNC0(FUNC5(pdata));
	prio_queues = FUNC2(pdata->rx_q_count);
	pfc_count = FUNC7(pdata);

	if (!pfc_count || ((q_fifo_size * prio_queues) > fifo_size)) {
		/* No traffic classes with PFC enabled or can't do lossless */
		FUNC4(fifo_size, prio_queues, fifo);
		return;
	}

	/* Calculate how much fifo we have to play with */
	rem_fifo = fifo_size - (q_fifo_size * prio_queues);

	/* Calculate how much more than base fifo PFC needs, which also
	 * becomes the threshold activation point (RFA)
	 */
	pdata->pfc_rfa = FUNC6(pdata);
	pdata->pfc_rfa = FUNC1(pdata->pfc_rfa);

	if (pdata->pfc_rfa > q_fifo_size) {
		addn_fifo = pdata->pfc_rfa - q_fifo_size;
		addn_fifo = FUNC0(addn_fifo);
	} else {
		addn_fifo = 0;
	}

	/* Calculate DCB fifo settings:
	 *   - distribute remaining fifo between the VLAN priority
	 *     queues based on traffic class PFC enablement and overall
	 *     priority (0 is lowest priority, so start at highest)
	 */
	i = prio_queues;
	while (i > 0) {
		i--;

		fifo[i] = (q_fifo_size / XGMAC_FIFO_UNIT) - 1;

		if (!pdata->pfcq[i] || !addn_fifo)
			continue;

		if (addn_fifo > rem_fifo) {
			FUNC3(pdata->netdev,
				    "RXq%u cannot set needed fifo size\n", i);
			if (!rem_fifo)
				continue;

			addn_fifo = rem_fifo;
		}

		fifo[i] += (addn_fifo / XGMAC_FIFO_UNIT);
		rem_fifo -= addn_fifo;
	}

	if (rem_fifo) {
		unsigned int inc_fifo = rem_fifo / prio_queues;

		/* Distribute remaining fifo across queues */
		for (i = 0; i < prio_queues; i++)
			fifo[i] += (inc_fifo / XGMAC_FIFO_UNIT);
	}
}