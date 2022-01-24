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
typedef  int u8 ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLL_RDY_MASK ; 
 int /*<<< orphan*/  DLL_STATUS ; 
 int /*<<< orphan*/  DLL_TRIM ; 
 int EBUSY ; 
 int FUNC0 (int) ; 
 int HISPD_MODE ; 
 int HS200_MODE ; 
 int HS400_MODE ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  IPAD_CTRL1 ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  ITAP_DELAY ; 
 int LEGACY_MODE ; 
 int /*<<< orphan*/  MODE_CTRL ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  OTAP_DELAY ; 
 int FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sdhci_host *host, u8 mode, u8 otap,
			  u8 drv_type, u8 itap, u8 trim, u8 clk)
{
	u8 val;
	int ret;

	if (mode == HISPD_MODE || mode == HS200_MODE)
		ret = FUNC6(host, 0x0, MODE_CTRL);
	else
		ret = FUNC6(host, mode, MODE_CTRL);
	if (ret)
		return ret;
	if (mode == HS400_MODE || mode == HS200_MODE) {
		ret = FUNC4(host, IPAD_CTRL1, &val);
		if (ret)
			return ret;
		ret = FUNC6(host, FUNC1(val, drv_type), IPAD_CTRL1);
		if (ret)
			return ret;
	}
	if (mode == LEGACY_MODE) {
		ret = FUNC6(host, 0x0, OTAP_DELAY);
		if (ret)
			return ret;
		ret = FUNC6(host, 0x0, ITAP_DELAY);
	} else {
		ret = FUNC6(host, FUNC3(otap), OTAP_DELAY);
		if (ret)
			return ret;
		if (mode != HS200_MODE)
			ret = FUNC6(host, FUNC2(itap), ITAP_DELAY);
		else
			ret = FUNC6(host, 0x0, ITAP_DELAY);
	}
	if (ret)
		return ret;
	if (mode != LEGACY_MODE) {
		ret = FUNC6(host, trim, DLL_TRIM);
		if (ret)
			return ret;
	}
	ret = FUNC6(host, 0, DLL_STATUS);
	if (ret)
		return ret;
	if (mode != LEGACY_MODE) {
		ret = FUNC6(host, FUNC0(clk), DLL_STATUS);
		if (ret)
			return ret;
		ret = FUNC5(host, DLL_STATUS, DLL_RDY_MASK);
		if (ret)
			return -EBUSY;
	}
	return 0;
}