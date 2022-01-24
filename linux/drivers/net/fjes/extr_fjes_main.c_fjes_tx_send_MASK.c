#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* ep_shm_info; } ;
struct fjes_adapter {int /*<<< orphan*/  raise_intr_rxdata_task; int /*<<< orphan*/  txrx_wq; TYPE_2__ hw; } ;
struct TYPE_10__ {TYPE_4__* info; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx_status; } ;
struct TYPE_9__ {TYPE_3__ v1i; } ;
struct TYPE_6__ {TYPE_5__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FJES_TX_DELAY_SEND_PENDING ; 
 int FUNC0 (TYPE_5__*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fjes_adapter *adapter, int dest,
			void *data, size_t len)
{
	int retval;

	retval = FUNC0(&adapter->hw.ep_shm_info[dest].tx,
					   data, len);
	if (retval)
		return retval;

	adapter->hw.ep_shm_info[dest].tx.info->v1i.tx_status =
		FJES_TX_DELAY_SEND_PENDING;
	if (!FUNC2(&adapter->raise_intr_rxdata_task))
		FUNC1(adapter->txrx_wq,
			   &adapter->raise_intr_rxdata_task);

	retval = 0;
	return retval;
}