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
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int PXP2_REG_RQ_ONCHIP_AT ; 
 int PXP2_REG_RQ_ONCHIP_AT_B0 ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int,int*,int) ; 

__attribute__((used)) static void FUNC4(struct bnx2x *bp, u32 index, dma_addr_t addr)
{
	int reg;
	u32 wb_write[2];

	if (FUNC0(bp))
		reg = PXP2_REG_RQ_ONCHIP_AT + index*8;
	else
		reg = PXP2_REG_RQ_ONCHIP_AT_B0 + index*8;

	wb_write[0] = FUNC1(addr);
	wb_write[1] = FUNC2(addr);
	FUNC3(bp, reg, wb_write, 2);
}