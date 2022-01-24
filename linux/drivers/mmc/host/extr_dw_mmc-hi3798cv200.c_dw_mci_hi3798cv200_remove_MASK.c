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
struct platform_device {int dummy; } ;
struct hi3798cv200_priv {int /*<<< orphan*/  sample_clk; int /*<<< orphan*/  drive_clk; } ;
struct dw_mci {struct hi3798cv200_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct platform_device*) ; 
 struct dw_mci* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct dw_mci *host = FUNC2(pdev);
	struct hi3798cv200_priv *priv = host->priv;

	FUNC0(priv->drive_clk);
	FUNC0(priv->sample_clk);

	return FUNC1(pdev);
}