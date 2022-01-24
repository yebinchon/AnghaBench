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
typedef  scalar_t__ u32 ;
struct qlcnic_adapter {int /*<<< orphan*/  portnum; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int QLCNIC_PCIE_SEM_TIMEOUT ; 
 int FUNC2 (struct qlcnic_adapter*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int
FUNC6(struct qlcnic_adapter *adapter, int sem, u32 id_reg)
{
	int timeout = 0, err = 0, done = 0;

	while (!done) {
		done = FUNC2(adapter, FUNC1(FUNC0(sem)),
			       &err);
		if (done == 1)
			break;
		if (++timeout >= QLCNIC_PCIE_SEM_TIMEOUT) {
			if (id_reg) {
				done = FUNC2(adapter, id_reg, &err);
				if (done != -1)
					FUNC4(&adapter->pdev->dev,
						"Failed to acquire sem=%d lock held by=%d\n",
						sem, done);
				else
					FUNC4(&adapter->pdev->dev,
						"Failed to acquire sem=%d lock",
						sem);
			} else {
				FUNC4(&adapter->pdev->dev,
					"Failed to acquire sem=%d lock", sem);
			}
			return -EIO;
		}
		FUNC5(1200);
	}

	if (id_reg)
		FUNC3(adapter, id_reg, adapter->portnum);

	return 0;
}