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
struct enic {int intr_count; TYPE_1__* msix; TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  affinity_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct enic*,int) ; 
 scalar_t__ FUNC6 (struct enic*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct enic *enic)
{
	int numa_node = FUNC4(&enic->pdev->dev);
	int i;

	for (i = 0; i < enic->intr_count; i++) {
		if (FUNC5(enic, i) || FUNC6(enic, i) ||
		    (FUNC0(enic->msix[i].affinity_mask) &&
		     !FUNC1(enic->msix[i].affinity_mask)))
			continue;
		if (FUNC7(&enic->msix[i].affinity_mask,
				       GFP_KERNEL))
			FUNC3(FUNC2(i, numa_node),
					enic->msix[i].affinity_mask);
	}
}