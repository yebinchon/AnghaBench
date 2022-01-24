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
struct ksz_hw {int dummy; } ;
struct dev_info {int /*<<< orphan*/  hwlock; struct ksz_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS884X_INT_TX ; 
 int /*<<< orphan*/  KS884X_INT_TX_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dev_info*) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct dev_info *hw_priv = (struct dev_info *) data;
	struct ksz_hw *hw = &hw_priv->hw;

	FUNC0(hw, KS884X_INT_TX_MASK);

	FUNC4(hw_priv);

	/* tasklets are interruptible. */
	FUNC2(&hw_priv->hwlock);
	FUNC1(hw, KS884X_INT_TX);
	FUNC3(&hw_priv->hwlock);
}