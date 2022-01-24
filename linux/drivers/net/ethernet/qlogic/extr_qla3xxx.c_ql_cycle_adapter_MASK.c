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
struct ql3_adapter {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct ql3_adapter*,int) ; 
 scalar_t__ FUNC3 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct ql3_adapter *qdev, int reset)
{
	if (FUNC2(qdev, reset) || FUNC3(qdev)) {
		FUNC1(qdev->ndev,
			   "Driver up/down cycle failed, closing device\n");
		FUNC4();
		FUNC0(qdev->ndev);
		FUNC5();
		return -1;
	}
	return 0;
}