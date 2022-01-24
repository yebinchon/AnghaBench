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
struct bnx2 {int flow_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_L2CTX_CTX_TYPE ; 
 int BNX2_L2CTX_CTX_TYPE_CTX_BD_CHN_TYPE_VALUE ; 
 int BNX2_L2CTX_CTX_TYPE_SIZE_L2 ; 
 int BNX2_L2CTX_FLOW_CTRL_ENABLE ; 
 int FLOW_CTRL_TX ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct bnx2 *bp, u32 cid)
{
	u32 val, rx_cid_addr = FUNC0(cid);

	val = BNX2_L2CTX_CTX_TYPE_CTX_BD_CHN_TYPE_VALUE;
	val |= BNX2_L2CTX_CTX_TYPE_SIZE_L2;
	val |= 0x02 << 8;

	if (bp->flow_ctrl & FLOW_CTRL_TX)
		val |= BNX2_L2CTX_FLOW_CTRL_ENABLE;

	FUNC1(bp, rx_cid_addr, BNX2_L2CTX_CTX_TYPE, val);
}