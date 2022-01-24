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
struct ibmvnic_adapter {int /*<<< orphan*/ * tx_pool; int /*<<< orphan*/ * tso_pool; TYPE_1__* login_rsp_buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_txsubm_subcrqs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ibmvnic_adapter*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ibmvnic_adapter *adapter)
{
	int tx_scrqs;
	int i, rc;

	tx_scrqs = FUNC0(adapter->login_rsp_buf->num_txsubm_subcrqs);
	for (i = 0; i < tx_scrqs; i++) {
		rc = FUNC1(adapter, &adapter->tso_pool[i]);
		if (rc)
			return rc;
		rc = FUNC1(adapter, &adapter->tx_pool[i]);
		if (rc)
			return rc;
	}

	return 0;
}