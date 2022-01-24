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
typedef  int /*<<< orphan*/  u32 ;
struct alx_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_RXQ0 ; 
 int /*<<< orphan*/  ALX_RXQ0_RSS_HASH_EN ; 
 int /*<<< orphan*/  FUNC0 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct alx_hw *hw)
{
	u32 ctrl = FUNC0(hw, ALX_RXQ0);

	ctrl &= ~ALX_RXQ0_RSS_HASH_EN;
	FUNC1(hw, ALX_RXQ0, ctrl);
}