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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct bnx2x *bp, u8 inc)
{
	u16 rcq, bd;
	u32 addr, tmp_reg;

	if (FUNC6(bp) < 2)
		addr = FUNC3(FUNC7(bp));
	else
		addr = FUNC4(FUNC6(bp) - 2);

	tmp_reg = FUNC8(bp, addr);
	rcq = FUNC5(tmp_reg) + inc;
	bd = FUNC1(tmp_reg) + inc;

	tmp_reg = FUNC2(rcq, bd);
	FUNC9(bp, addr, tmp_reg);

	FUNC0("UNDI producer [%d/%d][%08x] rings bd -> 0x%04x, rcq -> 0x%04x\n",
		       FUNC7(bp), FUNC6(bp), addr, bd, rcq);
}