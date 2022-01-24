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

/* Variables and functions */
 int /*<<< orphan*/  ALX_MDIO ; 
 int ALX_MDIO_BUSY ; 
 int ALX_MDIO_MAX_AC_TO ; 
 int ETIMEDOUT ; 
 int FUNC0 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct alx_hw *hw)
{
	u32 val;
	int i;

	for (i = 0; i < ALX_MDIO_MAX_AC_TO; i++) {
		val = FUNC0(hw, ALX_MDIO);
		if (!(val & ALX_MDIO_BUSY))
			return 0;
		FUNC1(10);
	}

	return -ETIMEDOUT;
}