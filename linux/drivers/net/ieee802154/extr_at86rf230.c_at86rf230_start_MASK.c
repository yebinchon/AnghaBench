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
struct ieee802154_hw {struct at86rf230_local* priv; } ;
struct at86rf230_trac {int dummy; } ;
struct at86rf230_local {TYPE_1__* spi; int /*<<< orphan*/  trac; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IEEE802154_AT86RF230_DEBUGFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_RX_AACK_ON ; 
 int /*<<< orphan*/  FUNC1 (struct at86rf230_local*) ; 
 int FUNC2 (struct at86rf230_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct ieee802154_hw *hw)
{
	struct at86rf230_local *lp = hw->priv;

	/* reset trac stats on start */
	if (FUNC0(CONFIG_IEEE802154_AT86RF230_DEBUGFS))
		FUNC4(&lp->trac, 0, sizeof(struct at86rf230_trac));

	FUNC1(lp);
	FUNC3(lp->spi->irq);

	return FUNC2(lp, STATE_RX_AACK_ON);
}