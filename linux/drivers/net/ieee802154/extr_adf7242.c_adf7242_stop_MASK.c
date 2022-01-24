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
struct ieee802154_hw {struct adf7242_local* priv; } ;
struct adf7242_local {int /*<<< orphan*/  flags; int /*<<< orphan*/  work; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RC_IDLE ; 
 int /*<<< orphan*/  FLAG_START ; 
 int /*<<< orphan*/  FUNC0 (struct adf7242_local*) ; 
 int /*<<< orphan*/  FUNC1 (struct adf7242_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ieee802154_hw *hw)
{
	struct adf7242_local *lp = hw->priv;

	FUNC4(lp->spi->irq);
	FUNC2(&lp->work);
	FUNC1(lp, CMD_RC_IDLE);
	FUNC3(FLAG_START, &lp->flags);
	FUNC0(lp);
}