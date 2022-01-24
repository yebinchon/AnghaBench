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
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_EXT ; 
 int /*<<< orphan*/  E1000_CTRL_EXT_EE_RST ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

void FUNC4(struct e1000_hw *hw)
{
	u32 ctrl_ext;

	FUNC3(10, 20);
	ctrl_ext = FUNC1(CTRL_EXT);
	ctrl_ext |= E1000_CTRL_EXT_EE_RST;
	FUNC2(CTRL_EXT, ctrl_ext);
	FUNC0();
}