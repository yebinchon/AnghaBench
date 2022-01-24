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
struct ican3_msg {int dummy; } ;
struct ican3_dev {scalar_t__ iftype; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct ican3_dev*,struct ican3_msg*) ; 
 int FUNC1 (struct ican3_dev*,struct ican3_msg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ican3_dev *mod, struct ican3_msg *msg)
{
	unsigned long flags;
	int ret;

	FUNC2(&mod->lock, flags);

	if (mod->iftype == 0)
		ret = FUNC1(mod, msg);
	else
		ret = FUNC0(mod, msg);

	FUNC3(&mod->lock, flags);
	return ret;
}