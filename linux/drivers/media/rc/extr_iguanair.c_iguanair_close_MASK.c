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
struct iguanair {int receiver_on; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct iguanair*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rc_dev *rdev)
{
	struct iguanair *ir = rdev->priv;
	int rc;

	FUNC2(&ir->lock);

	rc = FUNC1(ir, false);
	ir->receiver_on = false;
	if (rc && rc != -ENODEV)
		FUNC0(ir->dev, "failed to disable receiver: %d\n", rc);

	FUNC3(&ir->lock);
}