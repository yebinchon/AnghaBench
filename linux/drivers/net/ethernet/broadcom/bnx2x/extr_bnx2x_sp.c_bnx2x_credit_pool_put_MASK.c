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
struct bnx2x_credit_pool_obj {scalar_t__ pool_sz; int /*<<< orphan*/  credit; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static bool FUNC2(struct bnx2x_credit_pool_obj *o, int cnt)
{
	bool rc;

	FUNC1();

	/* Don't let to refill if credit + cnt > pool_sz */
	rc = FUNC0(&o->credit, cnt, o->pool_sz + 1);

	FUNC1();

	return rc;
}