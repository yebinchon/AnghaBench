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
struct cnic_sock {int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EALREADY ; 
 int EINVAL ; 
 int /*<<< orphan*/  L4_KCQE_OPCODE_VALUE_CLOSE_COMP ; 
 int /*<<< orphan*/  SK_F_PG_OFFLD_COMPLETE ; 
 scalar_t__ FUNC0 (struct cnic_sock*) ; 
 int FUNC1 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct cnic_sock *csk)
{
	if (!FUNC2(csk))
		return -EINVAL;

	if (FUNC0(csk)) {
		csk->state = L4_KCQE_OPCODE_VALUE_CLOSE_COMP;
		return FUNC1(csk);
	} else {
		/* Wait for remote reset sequence to complete */
		while (FUNC4(SK_F_PG_OFFLD_COMPLETE, &csk->flags))
			FUNC3(1);

		return -EALREADY;
	}
	return 0;
}