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
struct enic {int /*<<< orphan*/ * intr; int /*<<< orphan*/ * rq; TYPE_1__ rx_coalesce_setting; int /*<<< orphan*/ * cq; } ;

/* Variables and functions */
 unsigned int ENIC_WQ_NAPI_BUDGET ; 
 int /*<<< orphan*/  FUNC0 (struct enic*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct enic*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct enic*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  enic_rq_alloc_buf ; 
 int /*<<< orphan*/  enic_rq_service ; 
 int /*<<< orphan*/  FUNC4 (struct enic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  enic_wq_service ; 
 scalar_t__ FUNC5 (struct napi_struct*,unsigned int) ; 
 struct enic* FUNC6 (struct net_device*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct napi_struct *napi, int budget)
{
	struct net_device *netdev = napi->dev;
	struct enic *enic = FUNC6(netdev);
	unsigned int cq_rq = FUNC1(enic, 0);
	unsigned int cq_wq = FUNC2(enic, 0);
	unsigned int intr = FUNC3();
	unsigned int rq_work_to_do = budget;
	unsigned int wq_work_to_do = ENIC_WQ_NAPI_BUDGET;
	unsigned int  work_done, rq_work_done = 0, wq_work_done;
	int err;

	wq_work_done = FUNC7(&enic->cq[cq_wq], wq_work_to_do,
				       enic_wq_service, NULL);

	if (budget > 0)
		rq_work_done = FUNC7(&enic->cq[cq_rq],
			rq_work_to_do, enic_rq_service, NULL);

	/* Accumulate intr event credits for this polling
	 * cycle.  An intr event is the completion of a
	 * a WQ or RQ packet.
	 */

	work_done = rq_work_done + wq_work_done;

	if (work_done > 0)
		FUNC8(&enic->intr[intr],
			work_done,
			0 /* don't unmask intr */,
			0 /* don't reset intr timer */);

	err = FUNC10(&enic->rq[0], enic_rq_alloc_buf);

	/* Buffer allocation failed. Stay in polling
	 * mode so we can try to fill the ring again.
	 */

	if (err)
		rq_work_done = rq_work_to_do;
	if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce)
		/* Call the function which refreshes the intr coalescing timer
		 * value based on the traffic.
		 */
		FUNC0(enic, &enic->rq[0]);

	if ((rq_work_done < budget) && FUNC5(napi, rq_work_done)) {

		/* Some work done, but not enough to stay in polling,
		 * exit polling
		 */

		if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce)
			FUNC4(enic, &enic->rq[0]);
		FUNC9(&enic->intr[intr]);
	}

	return rq_work_done;
}