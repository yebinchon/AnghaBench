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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ last_cb_index; } ;
struct ipw_priv {TYPE_1__ sram_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  IPW_RESET_REG ; 
 int IPW_RESET_REG_MASTER_DISABLED ; 
 int IPW_RESET_REG_STOP_MASTER ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*) ; 
 scalar_t__ FUNC3 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ipw_priv *priv)
{
	u32 current_index = 0, previous_index;
	u32 watchdog = 0;

	FUNC0(">> :\n");

	current_index = FUNC3(priv);
	FUNC1("sram_desc.last_cb_index:0x%08X\n",
			  (int)priv->sram_desc.last_cb_index);

	while (current_index < priv->sram_desc.last_cb_index) {
		FUNC6(50);
		previous_index = current_index;
		current_index = FUNC3(priv);

		if (previous_index < current_index) {
			watchdog = 0;
			continue;
		}
		if (++watchdog > 400) {
			FUNC1("Timeout\n");
			FUNC4(priv);
			FUNC2(priv);
			return -1;
		}
	}

	FUNC2(priv);

	/*Disable the DMA in the CSR register */
	FUNC5(priv, IPW_RESET_REG,
		    IPW_RESET_REG_MASTER_DISABLED | IPW_RESET_REG_STOP_MASTER);

	FUNC0("<< dmaWaitSync\n");
	return 0;
}