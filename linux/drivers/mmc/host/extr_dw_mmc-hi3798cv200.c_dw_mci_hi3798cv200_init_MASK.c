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
struct hi3798cv200_priv {void* sample_clk; void* drive_clk; } ;
struct dw_mci {struct hi3798cv200_priv* priv; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct hi3798cv200_priv* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dw_mci *host)
{
	struct hi3798cv200_priv *priv;
	int ret;

	priv = FUNC6(host->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->sample_clk = FUNC5(host->dev, "ciu-sample");
	if (FUNC0(priv->sample_clk)) {
		FUNC4(host->dev, "failed to get ciu-sample clock\n");
		return FUNC1(priv->sample_clk);
	}

	priv->drive_clk = FUNC5(host->dev, "ciu-drive");
	if (FUNC0(priv->drive_clk)) {
		FUNC4(host->dev, "failed to get ciu-drive clock\n");
		return FUNC1(priv->drive_clk);
	}

	ret = FUNC3(priv->sample_clk);
	if (ret) {
		FUNC4(host->dev, "failed to enable ciu-sample clock\n");
		return ret;
	}

	ret = FUNC3(priv->drive_clk);
	if (ret) {
		FUNC4(host->dev, "failed to enable ciu-drive clock\n");
		goto disable_sample_clk;
	}

	host->priv = priv;
	return 0;

disable_sample_clk:
	FUNC2(priv->sample_clk);
	return ret;
}