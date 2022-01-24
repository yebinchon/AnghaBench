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
typedef  int u8 ;
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int DEFAULT_PHY_DEV_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ GRCBASE_MISC ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_3_CLEAR ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_3_SET ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 scalar_t__ NIG_REG_SERDES0_CTRL_MD_DEVAD ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,scalar_t__,int) ; 
 int SERDES_RESET_BITS ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct bnx2x *bp, u8 port)
{
	u32 val;

	FUNC0(NETIF_MSG_LINK, "bnx2x_serdes_deassert\n");

	val = SERDES_RESET_BITS << (port*16);

	/* Reset and unreset the SerDes/XGXS */
	FUNC1(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_CLEAR, val);
	FUNC3(500);
	FUNC1(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_SET, val);

	FUNC2(bp, port);

	FUNC1(bp, NIG_REG_SERDES0_CTRL_MD_DEVAD + port*0x10,
	       DEFAULT_PHY_DEV_ADDR);
}