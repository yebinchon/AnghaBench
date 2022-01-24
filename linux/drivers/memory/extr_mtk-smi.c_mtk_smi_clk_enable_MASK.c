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
struct mtk_smi {int /*<<< orphan*/  clk_apb; int /*<<< orphan*/  clk_smi; int /*<<< orphan*/  clk_gals0; int /*<<< orphan*/  clk_gals1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const struct mtk_smi *smi)
{
	int ret;

	ret = FUNC1(smi->clk_apb);
	if (ret)
		return ret;

	ret = FUNC1(smi->clk_smi);
	if (ret)
		goto err_disable_apb;

	ret = FUNC1(smi->clk_gals0);
	if (ret)
		goto err_disable_smi;

	ret = FUNC1(smi->clk_gals1);
	if (ret)
		goto err_disable_gals0;

	return 0;

err_disable_gals0:
	FUNC0(smi->clk_gals0);
err_disable_smi:
	FUNC0(smi->clk_smi);
err_disable_apb:
	FUNC0(smi->clk_apb);
	return ret;
}