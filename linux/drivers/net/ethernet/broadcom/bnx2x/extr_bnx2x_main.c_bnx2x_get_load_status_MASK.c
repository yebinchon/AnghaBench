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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BNX2X_PATH0_LOAD_CNT_MASK ; 
 int BNX2X_PATH0_LOAD_CNT_SHIFT ; 
 int BNX2X_PATH1_LOAD_CNT_MASK ; 
 int BNX2X_PATH1_LOAD_CNT_SHIFT ; 
 int /*<<< orphan*/  BNX2X_RECOVERY_GLOB_REG ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int NETIF_MSG_HW ; 
 int NETIF_MSG_IFUP ; 
 int FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct bnx2x *bp, int engine)
{
	u32 mask = (engine ? BNX2X_PATH1_LOAD_CNT_MASK :
			     BNX2X_PATH0_LOAD_CNT_MASK);
	u32 shift = (engine ? BNX2X_PATH1_LOAD_CNT_SHIFT :
			     BNX2X_PATH0_LOAD_CNT_SHIFT);
	u32 val = FUNC1(bp, BNX2X_RECOVERY_GLOB_REG);

	FUNC0(NETIF_MSG_HW | NETIF_MSG_IFUP, "GLOB_REG=0x%08x\n", val);

	val = (val & mask) >> shift;

	FUNC0(NETIF_MSG_HW | NETIF_MSG_IFUP, "load mask for engine %d = 0x%x\n",
	   engine, val);

	return val != 0;
}