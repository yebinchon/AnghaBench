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
struct rc_dev {struct iguanair* priv; } ;
struct iguanair {int receiver_on; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct iguanair*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct rc_dev *rdev)
{
	struct iguanair *ir = rdev->priv;
	int rc;

	FUNC1(&ir->lock);

	rc = FUNC0(ir, true);
	if (rc == 0)
		ir->receiver_on = true;

	FUNC2(&ir->lock);

	return rc;
}