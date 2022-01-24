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
struct aq_nic_s {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aq_nic_s*) ; 
 int FUNC1 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct aq_nic_s *self)
{
	int err = 0;

	if (!self->ndev)
		return;

	FUNC4();

	FUNC2(self->ndev);

	if (FUNC3(self->ndev)) {
		err = FUNC1(self);
		if (err < 0)
			goto err_exit;
	}
	FUNC0(self);

err_exit:
	FUNC5();
}