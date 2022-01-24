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
struct ef4_rx_queue {int flush_pending; } ;
struct ef4_nic {int n_channels; int /*<<< orphan*/  flush_wq; int /*<<< orphan*/  rxq_flush_outstanding; int /*<<< orphan*/  rxq_flush_pending; int /*<<< orphan*/  net_dev; } ;
struct ef4_channel {int dummy; } ;
typedef  int /*<<< orphan*/  ef4_qword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_rx_queue*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSF_AZ_DRIVER_EV_RX_DESCQ_ID ; 
 int /*<<< orphan*/  FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ef4_rx_queue* FUNC4 (struct ef4_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_channel*) ; 
 scalar_t__ FUNC6 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ef4_channel* FUNC8 (struct ef4_nic*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_rx_queue*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC10 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct ef4_nic *efx, ef4_qword_t *event)
{
	struct ef4_channel *channel;
	struct ef4_rx_queue *rx_queue;
	int qid;
	bool failed;

	qid = FUNC1(*event, FSF_AZ_DRIVER_EV_RX_DESCQ_ID);
	failed = FUNC1(*event, FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL);
	if (qid >= efx->n_channels)
		return;
	channel = FUNC8(efx, qid);
	if (!FUNC5(channel))
		return;
	rx_queue = FUNC4(channel);

	if (failed) {
		FUNC10(efx, hw, efx->net_dev,
			   "RXQ %d flush retry\n", qid);
		rx_queue->flush_pending = true;
		FUNC3(&efx->rxq_flush_pending);
	} else {
		FUNC7(FUNC9(rx_queue),
				      FUNC0(rx_queue));
	}
	FUNC2(&efx->rxq_flush_outstanding);
	if (FUNC6(efx))
		FUNC11(&efx->flush_wq);
}