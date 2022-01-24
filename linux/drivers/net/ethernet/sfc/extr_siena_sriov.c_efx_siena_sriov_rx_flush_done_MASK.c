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
struct siena_vf {int /*<<< orphan*/  flush_waitq; int /*<<< orphan*/  rxq_count; int /*<<< orphan*/  rxq_mask; int /*<<< orphan*/  rxq_retry_count; int /*<<< orphan*/  rxq_retry_mask; } ;
struct efx_nic {int dummy; } ;
typedef  int /*<<< orphan*/  efx_qword_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSF_AZ_DRIVER_EV_RX_DESCQ_ID ; 
 int /*<<< orphan*/  FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct siena_vf*) ; 
 scalar_t__ FUNC4 (struct efx_nic*,unsigned int,struct siena_vf**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct efx_nic *efx, efx_qword_t *event)
{
	struct siena_vf *vf;
	unsigned ev_failed, queue, qid;

	queue = FUNC0(*event, FSF_AZ_DRIVER_EV_RX_DESCQ_ID);
	ev_failed = FUNC0(*event,
				    FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL);
	if (FUNC4(efx, queue, &vf, &qid))
		return;
	if (!FUNC6(qid, vf->rxq_mask))
		return;

	if (ev_failed) {
		FUNC5(qid, vf->rxq_retry_mask);
		FUNC2(&vf->rxq_retry_count);
	} else {
		FUNC1(qid, vf->rxq_mask);
		--vf->rxq_count;
	}
	if (FUNC3(vf))
		FUNC7(&vf->flush_waitq);
}