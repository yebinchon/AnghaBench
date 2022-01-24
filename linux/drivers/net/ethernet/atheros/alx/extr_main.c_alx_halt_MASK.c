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
struct alx_hw {int /*<<< orphan*/  duplex; int /*<<< orphan*/  link_speed; } ;
struct alx_priv {struct alx_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_UNKNOWN ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct alx_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct alx_hw*) ; 

__attribute__((used)) static void FUNC5(struct alx_priv *alx)
{
	struct alx_hw *hw = &alx->hw;

	FUNC3(alx);
	hw->link_speed = SPEED_UNKNOWN;
	hw->duplex = DUPLEX_UNKNOWN;

	FUNC4(hw);

	/* disable l0s/l1 */
	FUNC0(hw, false, false);
	FUNC2(alx);
	FUNC1(alx);
}