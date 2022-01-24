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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct usbtll_omap* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tll_dev ; 
 int /*<<< orphan*/  tll_lock ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct usbtll_omap *tll = FUNC3(pdev);
	int i;

	FUNC5(&tll_lock);
	tll_dev = NULL;
	FUNC6(&tll_lock);

	for (i = 0; i < tll->nch; i++) {
		if (!FUNC0(tll->ch_clk[i])) {
			FUNC2(tll->ch_clk[i]);
			FUNC1(tll->ch_clk[i]);
		}
	}

	FUNC4(&pdev->dev);
	return 0;
}