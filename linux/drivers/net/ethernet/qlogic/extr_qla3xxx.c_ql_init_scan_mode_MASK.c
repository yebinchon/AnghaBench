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
struct ql3_adapter {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_LINK_OPTICAL ; 
 int /*<<< orphan*/  FUNC0 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql3_adapter*) ; 
 scalar_t__ FUNC3 (struct ql3_adapter*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ql3_adapter *qdev)
{
	FUNC0(qdev);

	if (FUNC4(QL_LINK_OPTICAL, &qdev->flags)) {
		if (FUNC3(qdev))
			FUNC1(qdev);
	} else {
		if (FUNC3(qdev))
			FUNC2(qdev);
	}
}