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
struct enic {unsigned int rq_count; unsigned int wq_count; int /*<<< orphan*/ * napi; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 scalar_t__ VNIC_DEV_INTR_MODE_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct enic*) ; 
 size_t FUNC1 (struct enic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct enic*) ; 
 int /*<<< orphan*/  FUNC3 (struct enic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct enic *enic)
{
	unsigned int i;

	for (i = 0; i < enic->rq_count; i++) {
		FUNC4(&enic->napi[i]);
		FUNC5(&enic->napi[i]);
	}
	if (FUNC6(enic->vdev) == VNIC_DEV_INTR_MODE_MSIX)
		for (i = 0; i < enic->wq_count; i++)
			FUNC5(&enic->napi[FUNC1(enic, i)]);

	FUNC3(enic);
	FUNC0(enic);
	FUNC2(enic);
}