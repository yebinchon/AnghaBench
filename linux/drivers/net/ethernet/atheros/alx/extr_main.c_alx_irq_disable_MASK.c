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
struct alx_priv {int num_vec; struct alx_hw hw; } ;
struct TYPE_2__ {scalar_t__ msix_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_IMR ; 
 int /*<<< orphan*/  ALX_ISR ; 
 int /*<<< orphan*/  ALX_ISR_DIS ; 
 int /*<<< orphan*/  FUNC0 (struct alx_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct alx_priv *alx)
{
	struct alx_hw *hw = &alx->hw;
	int i;

	FUNC2(hw, ALX_ISR, ALX_ISR_DIS);
	FUNC2(hw, ALX_IMR, 0);
	FUNC1(hw);

	if (alx->hw.pdev->msix_enabled) {
		for (i = 0; i < alx->num_vec; i++) {
			FUNC0(hw, i, true);
			FUNC4(FUNC3(alx->hw.pdev, i));
		}
	} else {
		FUNC4(FUNC3(alx->hw.pdev, 0));
	}
}