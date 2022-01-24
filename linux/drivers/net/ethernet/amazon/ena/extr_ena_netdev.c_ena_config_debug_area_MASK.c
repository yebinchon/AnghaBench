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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct ena_adapter {int /*<<< orphan*/  ena_dev; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int ETH_GSTRING_LEN ; 
 int /*<<< orphan*/  ETH_SS_STATS ; 
 int /*<<< orphan*/  drv ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(struct ena_adapter *adapter)
{
	u32 debug_area_size;
	int rc, ss_count;

	ss_count = FUNC3(adapter->netdev, ETH_SS_STATS);
	if (ss_count <= 0) {
		FUNC4(adapter, drv, adapter->netdev,
			  "SS count is negative\n");
		return;
	}

	/* allocate 32 bytes for each string and 64bit for the value */
	debug_area_size = ss_count * ETH_GSTRING_LEN + sizeof(u64) * ss_count;

	rc = FUNC0(adapter->ena_dev, debug_area_size);
	if (rc) {
		FUNC6("Cannot allocate debug area\n");
		return;
	}

	rc = FUNC2(adapter->ena_dev);
	if (rc) {
		if (rc == -EOPNOTSUPP)
			FUNC5(adapter, drv, adapter->netdev,
				   "Cannot set host attributes\n");
		else
			FUNC4(adapter, drv, adapter->netdev,
				  "Cannot set host attributes\n");
		goto err;
	}

	return;
err:
	FUNC1(adapter->ena_dev);
}