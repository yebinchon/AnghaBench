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
struct vnic_wq {unsigned int index; } ;
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct enic {int rq_count; int /*<<< orphan*/ * intr; int /*<<< orphan*/ * cq; struct vnic_wq* wq; struct napi_struct* napi; } ;

/* Variables and functions */
 unsigned int ENIC_WQ_NAPI_BUDGET ; 
 unsigned int FUNC0 (struct enic*,unsigned int) ; 
 unsigned int FUNC1 (struct enic*,unsigned int) ; 
 int /*<<< orphan*/  enic_wq_service ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*) ; 
 struct enic* FUNC3 (struct net_device*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct napi_struct *napi, int budget)
{
	struct net_device *netdev = napi->dev;
	struct enic *enic = FUNC3(netdev);
	unsigned int wq_index = (napi - &enic->napi[0]) - enic->rq_count;
	struct vnic_wq *wq = &enic->wq[wq_index];
	unsigned int cq;
	unsigned int intr;
	unsigned int wq_work_to_do = ENIC_WQ_NAPI_BUDGET;
	unsigned int wq_work_done;
	unsigned int wq_irq;

	wq_irq = wq->index;
	cq = FUNC0(enic, wq_irq);
	intr = FUNC1(enic, wq_irq);
	wq_work_done = FUNC4(&enic->cq[cq], wq_work_to_do,
				       enic_wq_service, NULL);

	FUNC5(&enic->intr[intr], wq_work_done,
				 0 /* don't unmask intr */,
				 1 /* reset intr timer */);
	if (!wq_work_done) {
		FUNC2(napi);
		FUNC6(&enic->intr[intr]);
		return 0;
	}

	return budget;
}