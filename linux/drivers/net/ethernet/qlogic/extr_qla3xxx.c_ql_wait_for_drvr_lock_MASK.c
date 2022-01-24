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
struct ql3_adapter {int mac_index; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  QL_DRVR_SEM_MASK ; 
 int QL_RESOURCE_BITS_BASE_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct ql3_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ql3_adapter *qdev)
{
	int i = 0;

	do {
		if (FUNC2(qdev,
				QL_DRVR_SEM_MASK,
				(QL_RESOURCE_BITS_BASE_CODE | (qdev->mac_index)
				 * 2) << 1)) {
			FUNC1(KERN_DEBUG, qdev->ndev,
				      "driver lock acquired\n");
			return 1;
		}
		FUNC3(1);
	} while (++i < 10);

	FUNC0(qdev->ndev, "Timed out waiting for driver lock...\n");
	return 0;
}