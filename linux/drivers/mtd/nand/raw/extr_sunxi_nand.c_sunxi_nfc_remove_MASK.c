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
struct sunxi_nfc {int /*<<< orphan*/  ahb_clk; int /*<<< orphan*/  mod_clk; scalar_t__ dmac; int /*<<< orphan*/  reset; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct sunxi_nfc* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sunxi_nfc*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct sunxi_nfc *nfc = FUNC2(pdev);

	FUNC4(nfc);

	FUNC3(nfc->reset);

	if (nfc->dmac)
		FUNC1(nfc->dmac);
	FUNC0(nfc->mod_clk);
	FUNC0(nfc->ahb_clk);

	return 0;
}