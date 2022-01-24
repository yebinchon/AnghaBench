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
typedef  int /*<<< orphan*/  u8 ;
struct link_params {int /*<<< orphan*/  port; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_2 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_LOW ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bnx2x_phy *phy,
				  struct link_params *params)
{
	struct bnx2x *bp = params->bp;
	u8 gpio_port;
	if (FUNC1(bp))
		gpio_port = FUNC0(bp);
	else
		gpio_port = params->port;
	FUNC2(NETIF_MSG_LINK, "Setting 8073 port %d into low power mode\n",
	   gpio_port);
	FUNC3(bp, MISC_REGISTERS_GPIO_2,
		       MISC_REGISTERS_GPIO_OUTPUT_LOW,
		       gpio_port);
}