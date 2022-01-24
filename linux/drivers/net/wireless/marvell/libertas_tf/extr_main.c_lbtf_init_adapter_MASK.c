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
struct lbtf_private {int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  cmdpendingq; int /*<<< orphan*/  cmdfreeq; int /*<<< orphan*/  command_timer; int /*<<< orphan*/ * vif; int /*<<< orphan*/  lock; int /*<<< orphan*/  current_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LBTF_DEB_MAIN ; 
 int /*<<< orphan*/  command_timer_fn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct lbtf_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct lbtf_private *priv)
{
	FUNC3(LBTF_DEB_MAIN);
	FUNC1(priv->current_addr);
	FUNC5(&priv->lock);

	priv->vif = NULL;
	FUNC7(&priv->command_timer, command_timer_fn, 0);

	FUNC0(&priv->cmdfreeq);
	FUNC0(&priv->cmdpendingq);

	FUNC6(&priv->driver_lock);

	/* Allocate the command buffers */
	if (FUNC2(priv))
		return -1;

	FUNC4(LBTF_DEB_MAIN);
	return 0;
}