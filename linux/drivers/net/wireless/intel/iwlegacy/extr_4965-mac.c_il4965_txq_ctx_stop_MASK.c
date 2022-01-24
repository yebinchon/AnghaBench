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
struct TYPE_2__ {int dma_chnl_num; } ;
struct il_priv {TYPE_1__ hw_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FH49_TSSR_TX_STATUS_REG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IL49_SCD_TXFACT ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct il_priv *il)
{
	int ch, ret;

	FUNC6(il, IL49_SCD_TXFACT, 0);

	/* Stop each Tx DMA channel, and wait for it to be idle */
	for (ch = 0; ch < il->hw_params.dma_chnl_num; ch++) {
		FUNC5(il, FUNC0(ch), 0x0);
		ret =
		    FUNC3(il, FH49_TSSR_TX_STATUS_REG,
				 FUNC1(ch),
				 FUNC1(ch),
				 1000);
		if (ret < 0)
			FUNC2("Timeout stopping DMA channel %d [0x%08x]",
			       ch, FUNC4(il, FH49_TSSR_TX_STATUS_REG));
	}
}