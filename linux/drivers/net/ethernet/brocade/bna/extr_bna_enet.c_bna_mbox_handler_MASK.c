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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ioc; } ;
struct bna {TYPE_1__ ioceth; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bna*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bna*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bna*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct bna *bna, u32 intr_status)
{
	if (FUNC0(bna, intr_status)) {
		FUNC3(bna, intr_status);
		return;
	}
	if (FUNC1(bna, intr_status))
		FUNC2(&bna->ioceth.ioc);
}