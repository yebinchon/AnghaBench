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
struct alx_hw {int /*<<< orphan*/  rx_ctrl; } ;
struct alx_priv {int /*<<< orphan*/  dev; struct alx_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_MAC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct alx_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct alx_priv *alx)
{
	struct alx_hw *hw = &alx->hw;

	FUNC1(hw);
	FUNC2(hw);
	FUNC0(alx->dev);

	FUNC3(hw, ALX_MAC_CTRL, hw->rx_ctrl);
}