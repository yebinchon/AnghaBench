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
struct xsdfec_clks {int /*<<< orphan*/ * core_clk; int /*<<< orphan*/ * axi_clk; int /*<<< orphan*/ * din_clk; int /*<<< orphan*/ * din_words_clk; int /*<<< orphan*/ * dout_clk; int /*<<< orphan*/ * dout_words_clk; int /*<<< orphan*/ * ctrl_clk; int /*<<< orphan*/ * status_clk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev,
			   struct xsdfec_clks *clks)
{
	int err;

	clks->core_clk = FUNC5(&pdev->dev, "core_clk");
	if (FUNC0(clks->core_clk)) {
		FUNC4(&pdev->dev, "failed to get core_clk");
		return FUNC1(clks->core_clk);
	}

	clks->axi_clk = FUNC5(&pdev->dev, "s_axi_aclk");
	if (FUNC0(clks->axi_clk)) {
		FUNC4(&pdev->dev, "failed to get axi_clk");
		return FUNC1(clks->axi_clk);
	}

	clks->din_words_clk = FUNC5(&pdev->dev, "s_axis_din_words_aclk");
	if (FUNC0(clks->din_words_clk)) {
		if (FUNC1(clks->din_words_clk) != -ENOENT) {
			err = FUNC1(clks->din_words_clk);
			return err;
		}
		clks->din_words_clk = NULL;
	}

	clks->din_clk = FUNC5(&pdev->dev, "s_axis_din_aclk");
	if (FUNC0(clks->din_clk)) {
		if (FUNC1(clks->din_clk) != -ENOENT) {
			err = FUNC1(clks->din_clk);
			return err;
		}
		clks->din_clk = NULL;
	}

	clks->dout_clk = FUNC5(&pdev->dev, "m_axis_dout_aclk");
	if (FUNC0(clks->dout_clk)) {
		if (FUNC1(clks->dout_clk) != -ENOENT) {
			err = FUNC1(clks->dout_clk);
			return err;
		}
		clks->dout_clk = NULL;
	}

	clks->dout_words_clk =
		FUNC5(&pdev->dev, "s_axis_dout_words_aclk");
	if (FUNC0(clks->dout_words_clk)) {
		if (FUNC1(clks->dout_words_clk) != -ENOENT) {
			err = FUNC1(clks->dout_words_clk);
			return err;
		}
		clks->dout_words_clk = NULL;
	}

	clks->ctrl_clk = FUNC5(&pdev->dev, "s_axis_ctrl_aclk");
	if (FUNC0(clks->ctrl_clk)) {
		if (FUNC1(clks->ctrl_clk) != -ENOENT) {
			err = FUNC1(clks->ctrl_clk);
			return err;
		}
		clks->ctrl_clk = NULL;
	}

	clks->status_clk = FUNC5(&pdev->dev, "m_axis_status_aclk");
	if (FUNC0(clks->status_clk)) {
		if (FUNC1(clks->status_clk) != -ENOENT) {
			err = FUNC1(clks->status_clk);
			return err;
		}
		clks->status_clk = NULL;
	}

	err = FUNC3(clks->core_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable core_clk (%d)", err);
		return err;
	}

	err = FUNC3(clks->axi_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable axi_clk (%d)", err);
		goto err_disable_core_clk;
	}

	err = FUNC3(clks->din_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable din_clk (%d)", err);
		goto err_disable_axi_clk;
	}

	err = FUNC3(clks->din_words_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable din_words_clk (%d)", err);
		goto err_disable_din_clk;
	}

	err = FUNC3(clks->dout_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable dout_clk (%d)", err);
		goto err_disable_din_words_clk;
	}

	err = FUNC3(clks->dout_words_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable dout_words_clk (%d)",
			err);
		goto err_disable_dout_clk;
	}

	err = FUNC3(clks->ctrl_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable ctrl_clk (%d)", err);
		goto err_disable_dout_words_clk;
	}

	err = FUNC3(clks->status_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable status_clk (%d)\n", err);
		goto err_disable_ctrl_clk;
	}

	return err;

err_disable_ctrl_clk:
	FUNC2(clks->ctrl_clk);
err_disable_dout_words_clk:
	FUNC2(clks->dout_words_clk);
err_disable_dout_clk:
	FUNC2(clks->dout_clk);
err_disable_din_words_clk:
	FUNC2(clks->din_words_clk);
err_disable_din_clk:
	FUNC2(clks->din_clk);
err_disable_axi_clk:
	FUNC2(clks->axi_clk);
err_disable_core_clk:
	FUNC2(clks->core_clk);

	return err;
}