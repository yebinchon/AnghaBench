#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ar9170 {int /*<<< orphan*/  cmd_wait; int /*<<< orphan*/  cmd_lock; scalar_t__ readlen; int /*<<< orphan*/  tx_anch; TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_IDLE ; 
 int /*<<< orphan*/  CARL9170_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct ar9170 *ar)
{
	int ret;

	FUNC0(ar, CARL9170_IDLE, CARL9170_STOPPED);

	ret = FUNC1(ar);
	if (ret)
		FUNC4(&ar->udev->dev, "kill pending tx urbs.\n");

	FUNC7(&ar->tx_anch);
	FUNC2(ar);

	/* kill any pending command */
	FUNC5(&ar->cmd_lock);
	ar->readlen = 0;
	FUNC6(&ar->cmd_lock);
	FUNC3(&ar->cmd_wait);

	/*
	 * Note:
	 * So far we freed all tx urbs, but we won't dare to touch any rx urbs.
	 * Else we would end up with a unresponsive device...
	 */
}