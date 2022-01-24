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
struct rc_dev {int dummy; } ;
struct img_ir_priv_hw {int /*<<< orphan*/  clk_nb; struct rc_dev* rdev; } ;
struct img_ir_priv {int /*<<< orphan*/  clk; struct img_ir_priv_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct img_ir_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rc_dev*) ; 

void FUNC4(struct img_ir_priv *priv)
{
	struct img_ir_priv_hw *hw = &priv->hw;
	struct rc_dev *rdev = hw->rdev;
	if (!rdev)
		return;
	FUNC2(priv, NULL, 0);
	hw->rdev = NULL;
	FUNC3(rdev);
#ifdef CONFIG_COMMON_CLK
	if (!IS_ERR(priv->clk))
		clk_notifier_unregister(priv->clk, &hw->clk_nb);
#endif
}