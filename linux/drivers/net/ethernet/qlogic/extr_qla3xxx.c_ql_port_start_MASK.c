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
 int /*<<< orphan*/  QL_PHY_GIO_SEM_MASK ; 
 int QL_RESOURCE_BITS_BASE_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql3_adapter*) ; 
 scalar_t__ FUNC4 (struct ql3_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ql3_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ql3_adapter *qdev)
{
	if (FUNC4(qdev, QL_PHY_GIO_SEM_MASK,
		(QL_RESOURCE_BITS_BASE_CODE | (qdev->mac_index) *
			 2) << 7)) {
		FUNC0(qdev->ndev, "Could not get hw lock for GIO\n");
		return -1;
	}

	if (FUNC1(qdev)) {
		FUNC2(qdev);
	} else {
		/* Copper port */
		FUNC3(qdev);
	}

	FUNC5(qdev, QL_PHY_GIO_SEM_MASK);
	return 0;
}