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
typedef  int u32 ;
struct alx_hw {int dummy; } ;
struct alx_priv {int int_mask; int /*<<< orphan*/  dev; struct alx_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_IMR ; 
 int ALX_ISR_ALERT ; 
 int ALX_ISR_FATAL ; 
 int ALX_ISR_PHY ; 
 int /*<<< orphan*/  FUNC0 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct alx_priv*,struct alx_hw*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool FUNC5(struct alx_priv *alx, u32 intr)
{
	struct alx_hw *hw = &alx->hw;

	if (intr & ALX_ISR_FATAL) {
		FUNC4(alx, hw, alx->dev,
			   "fatal interrupt 0x%x, resetting\n", intr);
		FUNC1(alx);
		return true;
	}

	if (intr & ALX_ISR_ALERT)
		FUNC3(alx->dev, "alert interrupt: 0x%x\n", intr);

	if (intr & ALX_ISR_PHY) {
		/* suppress PHY interrupt, because the source
		 * is from PHY internal. only the internal status
		 * is cleared, the interrupt status could be cleared.
		 */
		alx->int_mask &= ~ALX_ISR_PHY;
		FUNC2(hw, ALX_IMR, alx->int_mask);
		FUNC0(alx);
	}

	return false;
}