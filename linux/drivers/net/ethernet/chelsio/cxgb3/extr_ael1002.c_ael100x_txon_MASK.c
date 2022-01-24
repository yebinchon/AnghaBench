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
struct TYPE_2__ {scalar_t__ prtad; } ;
struct cphy {int /*<<< orphan*/  adapter; TYPE_1__ mdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_T3DBG_GPIO_EN ; 
 int F_GPIO2_OUT_VAL ; 
 int F_GPIO7_OUT_VAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct cphy *phy)
{
	int tx_on_gpio =
		phy->mdio.prtad == 0 ? F_GPIO7_OUT_VAL : F_GPIO2_OUT_VAL;

	FUNC0(100);
	FUNC1(phy->adapter, A_T3DBG_GPIO_EN, 0, tx_on_gpio);
	FUNC0(30);
}