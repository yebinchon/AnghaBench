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
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PBF_REG_DISABLE_VF ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_virtf*) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	/* Reset vf in IGU  interrupts are still disabled */
	FUNC4(bp, vf);

	/* pretend to enable the vf with the PBF */
	FUNC3(bp, FUNC1(bp, vf->abs_vfid));
	FUNC2(bp, PBF_REG_DISABLE_VF, 0);
	FUNC3(bp, FUNC0(bp));
}