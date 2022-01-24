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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int OP_BR_ADDR_HI ; 
 int OP_BR_ADDR_LO ; 
 int FUNC1 (int) ; 

u16 FUNC2(u64 instr)
{
	u16 addr_lo, addr_hi;

	addr_lo = FUNC0(OP_BR_ADDR_LO, instr);
	addr_hi = FUNC0(OP_BR_ADDR_HI, instr);

	return (addr_hi * ((OP_BR_ADDR_LO >> FUNC1(OP_BR_ADDR_LO)) + 1)) |
		addr_lo;
}