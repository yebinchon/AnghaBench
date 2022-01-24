#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct alx_hw {TYPE_1__* pdev; } ;
struct alx_priv {int num_vec; struct alx_hw hw; int /*<<< orphan*/  int_mask; } ;
struct TYPE_2__ {scalar_t__ msix_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_IMR ; 
 int /*<<< orphan*/  ALX_ISR ; 
 int /*<<< orphan*/  FUNC0 (struct alx_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct alx_priv *alx)
{
	struct alx_hw *hw = &alx->hw;
	int i;

	/* level-1 interrupt switch */
	FUNC2(hw, ALX_ISR, 0);
	FUNC2(hw, ALX_IMR, alx->int_mask);
	FUNC1(hw);

	if (alx->hw.pdev->msix_enabled) {
		/* enable all msix irqs */
		for (i = 0; i < alx->num_vec; i++)
			FUNC0(hw, i, false);
	}
}