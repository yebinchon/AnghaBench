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
struct alx_hw {int link_speed; } ;
struct alx_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  int_mask; struct alx_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_IMR ; 
 int /*<<< orphan*/  ALX_ISR_PHY ; 
 int SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct alx_hw*) ; 
 int FUNC8 (struct alx_hw*) ; 
 int FUNC9 (struct alx_priv*) ; 
 int FUNC10 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct alx_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC15 (struct alx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC18(struct alx_priv *alx)
{
	struct alx_hw *hw = &alx->hw;
	unsigned long flags;
	int old_speed;
	int err;

	/* clear PHY internal interrupt status, otherwise the main
	 * interrupt status will be asserted forever
	 */
	FUNC0(hw);

	old_speed = hw->link_speed;
	err = FUNC8(hw);
	if (err < 0)
		goto reset;

	FUNC16(&alx->irq_lock, flags);
	alx->int_mask |= ALX_ISR_PHY;
	FUNC14(hw, ALX_IMR, alx->int_mask);
	FUNC17(&alx->irq_lock, flags);

	if (old_speed == hw->link_speed)
		return;

	if (hw->link_speed != SPEED_UNKNOWN) {
		FUNC15(alx, link, alx->dev,
			   "NIC Up: %s\n", FUNC12(hw));
		FUNC7(hw);
		FUNC2(hw, true, true);
		FUNC13(hw);

		if (old_speed == SPEED_UNKNOWN)
			FUNC5(alx);
	} else {
		/* link is now down */
		FUNC6(alx);
		FUNC15(alx, link, alx->dev, "Link Down\n");
		err = FUNC10(hw);
		if (err)
			goto reset;
		FUNC3(alx);

		/* MAC reset causes all HW settings to be lost, restore all */
		err = FUNC9(alx);
		if (err)
			goto reset;
		FUNC1(alx);
		FUNC2(hw, false, true);
		FUNC7(hw);
		FUNC4(alx);
	}

	return;

reset:
	FUNC11(alx);
}