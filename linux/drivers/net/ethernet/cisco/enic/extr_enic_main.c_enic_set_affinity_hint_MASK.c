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
struct enic {int intr_count; int wq_count; TYPE_2__* msix; int /*<<< orphan*/  netdev; TYPE_1__* msix_entry; } ;
struct TYPE_4__ {int /*<<< orphan*/  affinity_mask; } ;
struct TYPE_3__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct enic*,int) ; 
 scalar_t__ FUNC3 (struct enic*,int) ; 
 int FUNC4 (struct enic*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct enic *enic)
{
	int i;
	int err;

	for (i = 0; i < enic->intr_count; i++) {
		if (FUNC2(enic, i)		||
		    FUNC3(enic, i)	||
		    !FUNC0(enic->msix[i].affinity_mask) ||
		    FUNC1(enic->msix[i].affinity_mask))
			continue;
		err = FUNC5(enic->msix_entry[i].vector,
					    enic->msix[i].affinity_mask);
		if (err)
			FUNC6(enic->netdev, "irq_set_affinity_hint failed, err %d\n",
				    err);
	}

	for (i = 0; i < enic->wq_count; i++) {
		int wq_intr = FUNC4(enic, i);

		if (FUNC0(enic->msix[wq_intr].affinity_mask) &&
		    !FUNC1(enic->msix[wq_intr].affinity_mask))
			FUNC7(enic->netdev,
					    enic->msix[wq_intr].affinity_mask,
					    i);
	}
}