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
struct mtk_nfc_clk {int /*<<< orphan*/  nfi_clk; int /*<<< orphan*/  pad_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct mtk_nfc_clk *clk)
{
	int ret;

	ret = FUNC1(clk->nfi_clk);
	if (ret) {
		FUNC2(dev, "failed to enable nfi clk\n");
		return ret;
	}

	ret = FUNC1(clk->pad_clk);
	if (ret) {
		FUNC2(dev, "failed to enable pad clk\n");
		FUNC0(clk->nfi_clk);
		return ret;
	}

	return 0;
}