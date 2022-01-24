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
typedef  int /*<<< orphan*/  u16 ;
struct alx_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_MII_ISR ; 
 int FUNC0 (struct alx_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(struct alx_hw *hw)
{
	u16 isr;

	/* clear interrupt status by reading it */
	return FUNC0(hw, ALX_MII_ISR, &isr);
}