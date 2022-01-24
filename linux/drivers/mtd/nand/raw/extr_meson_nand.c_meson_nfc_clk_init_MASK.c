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
struct meson_nfc {void* core_clk; void* device_clk; void* phase_tx; int /*<<< orphan*/  dev; void* phase_rx; int /*<<< orphan*/  reg_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SELECT_NAND ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct meson_nfc *nfc)
{
	int ret;

	/* request core clock */
	nfc->core_clk = FUNC6(nfc->dev, "core");
	if (FUNC0(nfc->core_clk)) {
		FUNC5(nfc->dev, "failed to get core clock\n");
		return FUNC1(nfc->core_clk);
	}

	nfc->device_clk = FUNC6(nfc->dev, "device");
	if (FUNC0(nfc->device_clk)) {
		FUNC5(nfc->dev, "failed to get device clock\n");
		return FUNC1(nfc->device_clk);
	}

	nfc->phase_tx = FUNC6(nfc->dev, "tx");
	if (FUNC0(nfc->phase_tx)) {
		FUNC5(nfc->dev, "failed to get TX clk\n");
		return FUNC1(nfc->phase_tx);
	}

	nfc->phase_rx = FUNC6(nfc->dev, "rx");
	if (FUNC0(nfc->phase_rx)) {
		FUNC5(nfc->dev, "failed to get RX clk\n");
		return FUNC1(nfc->phase_rx);
	}

	/* init SD_EMMC_CLOCK to sane defaults w/min clock rate */
	FUNC7(nfc->reg_clk,
			   0, CLK_SELECT_NAND, CLK_SELECT_NAND);

	ret = FUNC3(nfc->core_clk);
	if (ret) {
		FUNC5(nfc->dev, "failed to enable core clock\n");
		return ret;
	}

	ret = FUNC3(nfc->device_clk);
	if (ret) {
		FUNC5(nfc->dev, "failed to enable device clock\n");
		goto err_device_clk;
	}

	ret = FUNC3(nfc->phase_tx);
	if (ret) {
		FUNC5(nfc->dev, "failed to enable TX clock\n");
		goto err_phase_tx;
	}

	ret = FUNC3(nfc->phase_rx);
	if (ret) {
		FUNC5(nfc->dev, "failed to enable RX clock\n");
		goto err_phase_rx;
	}

	ret = FUNC4(nfc->device_clk, 24000000);
	if (ret)
		goto err_phase_rx;

	return 0;
err_phase_rx:
	FUNC2(nfc->phase_tx);
err_phase_tx:
	FUNC2(nfc->device_clk);
err_device_clk:
	FUNC2(nfc->core_clk);
	return ret;
}