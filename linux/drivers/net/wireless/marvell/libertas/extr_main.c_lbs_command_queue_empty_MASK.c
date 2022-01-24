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
struct lbs_private {int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  cmdpendingq; int /*<<< orphan*/ * cur_cmd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct lbs_private *priv)
{
	unsigned long flags;
	bool ret;
	FUNC1(&priv->driver_lock, flags);
	ret = priv->cur_cmd == NULL && FUNC0(&priv->cmdpendingq);
	FUNC2(&priv->driver_lock, flags);
	return ret;
}