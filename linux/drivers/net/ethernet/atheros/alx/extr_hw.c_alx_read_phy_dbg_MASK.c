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
struct alx_hw {int /*<<< orphan*/  mdio_lock; } ;

/* Variables and functions */
 int FUNC0 (struct alx_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct alx_hw *hw, u16 reg, u16 *pdata)
{
	int err;

	FUNC1(&hw->mdio_lock);
	err = FUNC0(hw, reg, pdata);
	FUNC2(&hw->mdio_lock);

	return err;
}