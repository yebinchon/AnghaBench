#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rc_dev {char* device_name; int /*<<< orphan*/  change_protocol; int /*<<< orphan*/  s_wakeup_filter; int /*<<< orphan*/  s_filter; int /*<<< orphan*/  allowed_protocols; int /*<<< orphan*/  map_name; struct img_ir_priv* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  notifier_call; } ;
struct img_ir_priv_hw {int clk_hz; TYPE_1__ clk_nb; struct rc_dev* rdev; int /*<<< orphan*/  suspend_timer; int /*<<< orphan*/  end_timer; } ;
struct img_ir_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; struct img_ir_priv_hw hw; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RC_DRIVER_SCANCODE ; 
 int /*<<< orphan*/  RC_MAP_EMPTY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct img_ir_priv*) ; 
 int /*<<< orphan*/  img_ir_change_protocol ; 
 int /*<<< orphan*/  img_ir_clk_notify ; 
 int /*<<< orphan*/  img_ir_end_timer ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct img_ir_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct img_ir_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  img_ir_set_normal_filter ; 
 int /*<<< orphan*/  img_ir_set_wakeup_filter ; 
 int /*<<< orphan*/  img_ir_suspend_timer ; 
 struct rc_dev* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rc_dev*) ; 
 int FUNC13 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15(struct img_ir_priv *priv)
{
	struct img_ir_priv_hw *hw = &priv->hw;
	struct rc_dev *rdev;
	int error;

	/* Ensure hardware decoders have been preprocessed */
	FUNC8();

	/* Probe hardware capabilities */
	FUNC9(priv);

	/* Set up the end timer */
	FUNC14(&hw->end_timer, img_ir_end_timer, 0);
	FUNC14(&hw->suspend_timer, img_ir_suspend_timer, 0);

	/* Register a clock notifier */
	if (!FUNC0(priv->clk)) {
		hw->clk_hz = FUNC1(priv->clk);
#ifdef CONFIG_COMMON_CLK
		hw->clk_nb.notifier_call = img_ir_clk_notify;
		error = clk_notifier_register(priv->clk, &hw->clk_nb);
		if (error)
			dev_warn(priv->dev,
				 "failed to register clock notifier\n");
#endif
	} else {
		hw->clk_hz = 32768;
	}

	/* Allocate hardware decoder */
	hw->rdev = rdev = FUNC11(RC_DRIVER_SCANCODE);
	if (!rdev) {
		FUNC4(priv->dev, "cannot allocate input device\n");
		error = -ENOMEM;
		goto err_alloc_rc;
	}
	rdev->priv = priv;
	rdev->map_name = RC_MAP_EMPTY;
	rdev->allowed_protocols = FUNC7(priv);
	rdev->device_name = "IMG Infrared Decoder";
	rdev->s_filter = img_ir_set_normal_filter;
	rdev->s_wakeup_filter = img_ir_set_wakeup_filter;

	/* Register hardware decoder */
	error = FUNC13(rdev);
	if (error) {
		FUNC4(priv->dev, "failed to register IR input device\n");
		goto err_register_rc;
	}

	/*
	 * Set this after rc_register_device as no protocols have been
	 * registered yet.
	 */
	rdev->change_protocol = img_ir_change_protocol;

	FUNC6(priv->dev, 1);

	return 0;

err_register_rc:
	FUNC10(priv, NULL, 0);
	hw->rdev = NULL;
	FUNC12(rdev);
err_alloc_rc:
#ifdef CONFIG_COMMON_CLK
	if (!IS_ERR(priv->clk))
		clk_notifier_unregister(priv->clk, &hw->clk_nb);
#endif
	return error;
}