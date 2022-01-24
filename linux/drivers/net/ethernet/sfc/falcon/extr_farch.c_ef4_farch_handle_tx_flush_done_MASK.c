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
struct ef4_tx_queue {int /*<<< orphan*/  channel; int /*<<< orphan*/  flush_outstanding; } ;
struct ef4_nic {int n_tx_channels; } ;
typedef  int /*<<< orphan*/  ef4_qword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_tx_queue*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EF4_TXQ_TYPES ; 
 int /*<<< orphan*/  FSF_AZ_DRIVER_EV_SUBDATA ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ef4_tx_queue* FUNC4 (struct ef4_nic*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct ef4_nic *efx, ef4_qword_t *event)
{
	struct ef4_tx_queue *tx_queue;
	int qid;

	qid = FUNC1(*event, FSF_AZ_DRIVER_EV_SUBDATA);
	if (qid < EF4_TXQ_TYPES * efx->n_tx_channels) {
		tx_queue = FUNC4(efx, qid / EF4_TXQ_TYPES,
					    qid % EF4_TXQ_TYPES);
		if (FUNC2(&tx_queue->flush_outstanding, 1, 0)) {
			FUNC3(tx_queue->channel,
					      FUNC0(tx_queue));
		}
	}
}