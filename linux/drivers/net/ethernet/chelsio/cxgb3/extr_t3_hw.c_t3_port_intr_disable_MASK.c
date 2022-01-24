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
struct cphy {TYPE_1__* ops; } ;
struct adapter {int dummy; } ;
struct TYPE_4__ {struct cphy phy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* intr_disable ) (struct cphy*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  A_XGM_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cphy*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct adapter *adapter, int idx)
{
	struct cphy *phy = &FUNC1(adapter, idx)->phy;

	FUNC4(adapter, FUNC0(A_XGM_INT_ENABLE, idx), 0);
	FUNC3(adapter, FUNC0(A_XGM_INT_ENABLE, idx)); /* flush */
	phy->ops->intr_disable(phy);
}