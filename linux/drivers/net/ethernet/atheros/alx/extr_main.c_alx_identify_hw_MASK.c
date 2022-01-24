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
struct alx_hw {int max_dma_chnl; } ;
struct alx_priv {struct alx_hw hw; } ;

/* Variables and functions */
 int ALX_REV_B0 ; 
 int ALX_REV_C0 ; 
 int EINVAL ; 
 int FUNC0 (struct alx_hw*) ; 

__attribute__((used)) static int FUNC1(struct alx_priv *alx)
{
	struct alx_hw *hw = &alx->hw;
	int rev = FUNC0(hw);

	if (rev > ALX_REV_C0)
		return -EINVAL;

	hw->max_dma_chnl = rev >= ALX_REV_B0 ? 4 : 2;

	return 0;
}