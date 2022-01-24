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
struct ixgb_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EECD ; 
 int IXGB_EECD_CS ; 
 int IXGB_EECD_DI ; 
 int IXGB_EECD_SK ; 
 int FUNC0 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ixgb_hw *hw)
{
	u32 eecd_reg;

	eecd_reg = FUNC0(hw, EECD);

	/*  Clear SK and DI  */
	eecd_reg &= ~(IXGB_EECD_SK | IXGB_EECD_DI);
	FUNC1(hw, EECD, eecd_reg);

	/*  Set CS  */
	eecd_reg |= IXGB_EECD_CS;
	FUNC1(hw, EECD, eecd_reg);
}