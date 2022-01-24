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
struct cnic_sock {scalar_t__ flags; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SK_F_INUSE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct cnic_sock *csk)
{
	if (!FUNC3(csk))
		return -EINVAL;

	FUNC4(csk);
	FUNC1(SK_F_INUSE, &csk->flags);
	FUNC7();
	while (FUNC0(&csk->ref_count) != 1)
		FUNC6(1);
	FUNC2(csk);

	csk->flags = 0;
	FUNC5(csk);
	return 0;
}