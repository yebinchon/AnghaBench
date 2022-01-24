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
struct ksz_hw {int /*<<< orphan*/  enabled; } ;
struct dev_info {int /*<<< orphan*/  rx_tasklet; int /*<<< orphan*/  hwlock; int /*<<< orphan*/  (* dev_rcv ) (struct dev_info*) ;struct ksz_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS884X_INT_RX ; 
 int /*<<< orphan*/  KS884X_INT_RX_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dev_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(unsigned long data)
{
	struct dev_info *hw_priv = (struct dev_info *) data;
	struct ksz_hw *hw = &hw_priv->hw;

	if (!hw->enabled)
		return;
	if (FUNC7(!hw_priv->dev_rcv(hw_priv))) {

		/* In case receive process is suspended because of overrun. */
		FUNC1(hw);

		/* tasklets are interruptible. */
		FUNC3(&hw_priv->hwlock);
		FUNC2(hw, KS884X_INT_RX_MASK);
		FUNC4(&hw_priv->hwlock);
	} else {
		FUNC0(hw, KS884X_INT_RX);
		FUNC6(&hw_priv->rx_tasklet);
	}
}