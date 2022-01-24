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
struct netdata_local {scalar_t__ duplex; scalar_t__ speed; int /*<<< orphan*/  net_base; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  LPC_COMMAND_FULLDUPLEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  LPC_MAC2_FULL_DUPLEX ; 
 int /*<<< orphan*/  LPC_SUPP_SPEED ; 
 scalar_t__ SPEED_100 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct netdata_local *pldat)
{
	u32 tmp;

	if (pldat->duplex == DUPLEX_FULL) {
		tmp = FUNC5(FUNC2(pldat->net_base));
		tmp |= LPC_MAC2_FULL_DUPLEX;
		FUNC6(tmp, FUNC2(pldat->net_base));
		tmp = FUNC5(FUNC0(pldat->net_base));
		tmp |= LPC_COMMAND_FULLDUPLEX;
		FUNC6(tmp, FUNC0(pldat->net_base));
		FUNC6(FUNC4(0x15), FUNC1(pldat->net_base));
	} else {
		tmp = FUNC5(FUNC2(pldat->net_base));
		tmp &= ~LPC_MAC2_FULL_DUPLEX;
		FUNC6(tmp, FUNC2(pldat->net_base));
		tmp = FUNC5(FUNC0(pldat->net_base));
		tmp &= ~LPC_COMMAND_FULLDUPLEX;
		FUNC6(tmp, FUNC0(pldat->net_base));
		FUNC6(FUNC4(0x12), FUNC1(pldat->net_base));
	}

	if (pldat->speed == SPEED_100)
		FUNC6(LPC_SUPP_SPEED, FUNC3(pldat->net_base));
	else
		FUNC6(0, FUNC3(pldat->net_base));
}