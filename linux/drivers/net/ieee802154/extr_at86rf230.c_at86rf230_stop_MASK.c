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
typedef  int /*<<< orphan*/  u8 ;
struct ieee802154_hw {struct at86rf230_local* priv; } ;
struct at86rf230_local {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SR_CSMA_SEED_0 ; 
 int /*<<< orphan*/  SR_CSMA_SEED_1 ; 
 int /*<<< orphan*/  STATE_FORCE_TRX_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct at86rf230_local*) ; 
 int /*<<< orphan*/  FUNC2 (struct at86rf230_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct at86rf230_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ieee802154_hw *hw)
{
	struct at86rf230_local *lp = hw->priv;
	u8 csma_seed[2];

	FUNC2(lp, STATE_FORCE_TRX_OFF);

	FUNC4(lp->spi->irq);

	/* It's recommended to set random new csma_seeds before sleep state.
	 * Makes only sense in the stop callback, not doing this inside of
	 * at86rf230_sleep, this is also used when we don't transmit afterwards
	 * when calling start callback again.
	 */
	FUNC5(csma_seed, FUNC0(csma_seed));
	FUNC3(lp, SR_CSMA_SEED_0, csma_seed[0]);
	FUNC3(lp, SR_CSMA_SEED_1, csma_seed[1]);

	FUNC1(lp);
}