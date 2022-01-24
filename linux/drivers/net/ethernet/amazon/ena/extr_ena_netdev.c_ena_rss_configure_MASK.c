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
struct TYPE_2__ {int /*<<< orphan*/  tbl_log_size; } ;
struct ena_com_dev {TYPE_1__ rss; } ;
struct ena_adapter {int /*<<< orphan*/  netdev; struct ena_com_dev* ena_dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct ena_com_dev*) ; 
 int FUNC1 (struct ena_com_dev*) ; 
 int FUNC2 (struct ena_com_dev*) ; 
 int FUNC3 (struct ena_adapter*) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC4 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ena_adapter *adapter)
{
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	int rc;

	/* In case the RSS table wasn't initialized by probe */
	if (!ena_dev->rss.tbl_log_size) {
		rc = FUNC3(adapter);
		if (rc && (rc != -EOPNOTSUPP)) {
			FUNC4(adapter, ifup, adapter->netdev,
				  "Failed to init RSS rc: %d\n", rc);
			return rc;
		}
	}

	/* Set indirect table */
	rc = FUNC0(ena_dev);
	if (FUNC5(rc && rc != -EOPNOTSUPP))
		return rc;

	/* Configure hash function (if supported) */
	rc = FUNC2(ena_dev);
	if (FUNC5(rc && (rc != -EOPNOTSUPP)))
		return rc;

	/* Configure hash inputs (if supported) */
	rc = FUNC1(ena_dev);
	if (FUNC5(rc && (rc != -EOPNOTSUPP)))
		return rc;

	return 0;
}