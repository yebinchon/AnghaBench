#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int num_queues; TYPE_2__* ena_napi; struct ena_com_dev* ena_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  work; } ;
struct TYPE_4__ {TYPE_1__ dim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ena_adapter*,int) ; 
 int /*<<< orphan*/  ena_dim_work ; 

__attribute__((used)) static int FUNC5(struct ena_adapter *adapter)
{
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	int rc, i;

	for (i = 0; i < adapter->num_queues; i++) {
		rc = FUNC4(adapter, i);
		if (rc)
			goto create_err;
		FUNC1(&adapter->ena_napi[i].dim.work, ena_dim_work);
	}

	return 0;

create_err:
	while (i--) {
		FUNC2(&adapter->ena_napi[i].dim.work);
		FUNC3(ena_dev, FUNC0(i));
	}

	return rc;
}