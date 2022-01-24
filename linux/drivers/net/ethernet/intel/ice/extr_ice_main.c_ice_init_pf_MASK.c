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
struct ice_pf {int /*<<< orphan*/ * avail_txqs; TYPE_1__* pdev; void* avail_rxqs; int /*<<< orphan*/  max_pf_rxqs; int /*<<< orphan*/  max_pf_txqs; int /*<<< orphan*/  avail_q_mutex; int /*<<< orphan*/  state; int /*<<< orphan*/  serv_task; int /*<<< orphan*/  serv_tmr_period; int /*<<< orphan*/  serv_tmr; int /*<<< orphan*/  sw_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __ICE_SERVICE_SCHED ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ice_service_task ; 
 int /*<<< orphan*/  ice_service_timer ; 
 int /*<<< orphan*/  FUNC4 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ice_pf *pf)
{
	FUNC4(pf);

	FUNC5(&pf->sw_mutex);

	/* setup service timer and periodic service task */
	FUNC6(&pf->serv_tmr, ice_service_timer, 0);
	pf->serv_tmr_period = HZ;
	FUNC0(&pf->serv_task, ice_service_task);
	FUNC2(__ICE_SERVICE_SCHED, pf->state);

	FUNC5(&pf->avail_q_mutex);
	pf->avail_txqs = FUNC1(pf->max_pf_txqs, GFP_KERNEL);
	if (!pf->avail_txqs)
		return -ENOMEM;

	pf->avail_rxqs = FUNC1(pf->max_pf_rxqs, GFP_KERNEL);
	if (!pf->avail_rxqs) {
		FUNC3(&pf->pdev->dev, pf->avail_txqs);
		pf->avail_txqs = NULL;
		return -ENOMEM;
	}

	return 0;
}