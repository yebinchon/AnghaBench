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
struct usbtll_omap {int nch; int /*<<< orphan*/ * ch_clk; } ;
struct usbhs_omap_platform_data {int /*<<< orphan*/ * port_mode; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct usbtll_omap* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tll_dev ; 
 int /*<<< orphan*/  tll_lock ; 

int FUNC7(struct usbhs_omap_platform_data *pdata)
{
	int i;
	struct usbtll_omap *tll;

	if (!tll_dev)
		return -ENODEV;

	FUNC5(&tll_lock);
	tll = FUNC2(tll_dev);

	for (i = 0; i < tll->nch; i++) {
		if (FUNC3(pdata->port_mode[i])) {
			if (!FUNC0(tll->ch_clk[i]))
				FUNC1(tll->ch_clk[i]);
		}
	}

	FUNC6(&tll_lock);
	FUNC4(tll_dev);

	return 0;
}