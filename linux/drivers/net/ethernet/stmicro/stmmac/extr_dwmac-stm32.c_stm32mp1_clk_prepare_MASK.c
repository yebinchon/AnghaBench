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
struct stm32_dwmac {scalar_t__ clk_eth_ck; scalar_t__ syscfg_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct stm32_dwmac *dwmac, bool prepare)
{
	int ret = 0;

	if (prepare) {
		ret = FUNC1(dwmac->syscfg_clk);
		if (ret)
			return ret;

		if (dwmac->clk_eth_ck) {
			ret = FUNC1(dwmac->clk_eth_ck);
			if (ret) {
				FUNC0(dwmac->syscfg_clk);
				return ret;
			}
		}
	} else {
		FUNC0(dwmac->syscfg_clk);
		if (dwmac->clk_eth_ck)
			FUNC0(dwmac->clk_eth_ck);
	}
	return ret;
}