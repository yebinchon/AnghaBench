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
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct TYPE_2__ {scalar_t__ use_adaptive_rx_coalesce; } ;
struct enic {int /*<<< orphan*/ * intr; int /*<<< orphan*/ * rq; TYPE_1__ rx_coalesce_setting; int /*<<< orphan*/ * cq; struct napi_struct* napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct enic*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct enic*,unsigned int) ; 
 unsigned int FUNC2 (struct enic*,unsigned int) ; 
 int /*<<< orphan*/  enic_rq_alloc_buf ; 
 int /*<<< orphan*/  enic_rq_service ; 
 int /*<<< orphan*/  FUNC3 (struct enic*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct napi_struct*,unsigned int) ; 
 struct enic* FUNC5 (struct net_device*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct napi_struct *napi, int budget)
{
	struct net_device *netdev = napi->dev;
	struct enic *enic = FUNC5(netdev);
	unsigned int rq = (napi - &enic->napi[0]);
	unsigned int cq = FUNC1(enic, rq);
	unsigned int intr = FUNC2(enic, rq);
	unsigned int work_to_do = budget;
	unsigned int work_done = 0;
	int err;

	/* Service RQ
	 */

	if (budget > 0)
		work_done = FUNC6(&enic->cq[cq],
			work_to_do, enic_rq_service, NULL);

	/* Return intr event credits for this polling
	 * cycle.  An intr event is the completion of a
	 * RQ packet.
	 */

	if (work_done > 0)
		FUNC7(&enic->intr[intr],
			work_done,
			0 /* don't unmask intr */,
			0 /* don't reset intr timer */);

	err = FUNC9(&enic->rq[rq], enic_rq_alloc_buf);

	/* Buffer allocation failed. Stay in polling mode
	 * so we can try to fill the ring again.
	 */

	if (err)
		work_done = work_to_do;
	if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce)
		/* Call the function which refreshes the intr coalescing timer
		 * value based on the traffic.
		 */
		FUNC0(enic, &enic->rq[rq]);

	if ((work_done < budget) && FUNC4(napi, work_done)) {

		/* Some work done, but not enough to stay in polling,
		 * exit polling
		 */

		if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce)
			FUNC3(enic, &enic->rq[rq]);
		FUNC8(&enic->intr[intr]);
	}

	return work_done;
}