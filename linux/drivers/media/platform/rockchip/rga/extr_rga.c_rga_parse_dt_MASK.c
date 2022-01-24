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
struct rockchip_rga {struct reset_control* hclk; int /*<<< orphan*/  dev; struct reset_control* aclk; struct reset_control* sclk; } ;
struct reset_control {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct reset_control* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC6 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct rockchip_rga *rga)
{
	struct reset_control *core_rst, *axi_rst, *ahb_rst;

	core_rst = FUNC4(rga->dev, "core");
	if (FUNC0(core_rst)) {
		FUNC2(rga->dev, "failed to get core reset controller\n");
		return FUNC1(core_rst);
	}

	axi_rst = FUNC4(rga->dev, "axi");
	if (FUNC0(axi_rst)) {
		FUNC2(rga->dev, "failed to get axi reset controller\n");
		return FUNC1(axi_rst);
	}

	ahb_rst = FUNC4(rga->dev, "ahb");
	if (FUNC0(ahb_rst)) {
		FUNC2(rga->dev, "failed to get ahb reset controller\n");
		return FUNC1(ahb_rst);
	}

	FUNC5(core_rst);
	FUNC7(1);
	FUNC6(core_rst);

	FUNC5(axi_rst);
	FUNC7(1);
	FUNC6(axi_rst);

	FUNC5(ahb_rst);
	FUNC7(1);
	FUNC6(ahb_rst);

	rga->sclk = FUNC3(rga->dev, "sclk");
	if (FUNC0(rga->sclk)) {
		FUNC2(rga->dev, "failed to get sclk clock\n");
		return FUNC1(rga->sclk);
	}

	rga->aclk = FUNC3(rga->dev, "aclk");
	if (FUNC0(rga->aclk)) {
		FUNC2(rga->dev, "failed to get aclk clock\n");
		return FUNC1(rga->aclk);
	}

	rga->hclk = FUNC3(rga->dev, "hclk");
	if (FUNC0(rga->hclk)) {
		FUNC2(rga->dev, "failed to get hclk clock\n");
		return FUNC1(rga->hclk);
	}

	return 0;
}