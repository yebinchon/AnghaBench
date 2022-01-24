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
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_rx_mode_ramrod_params {int /*<<< orphan*/  rx_accept_flags; int /*<<< orphan*/  ramrod_flags; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  accept_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int FUNC1 (struct bnx2x*,struct bnx2x_rx_mode_ramrod_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int,struct bnx2x_rx_mode_ramrod_params*,struct bnx2x_virtf*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct bnx2x_virtf*,int) ; 

int FUNC5(struct bnx2x *bp, struct bnx2x_virtf *vf,
		    int qid, unsigned long accept_flags)
{
	struct bnx2x_rx_mode_ramrod_params ramrod;

	FUNC0(BNX2X_MSG_IOV, "vf[%d]\n", vf->abs_vfid);

	FUNC2(bp, qid, &ramrod, vf, accept_flags);
	FUNC3(RAMROD_COMP_WAIT, &ramrod.ramrod_flags);
	FUNC4(vf, qid)->accept_flags = ramrod.rx_accept_flags;
	return FUNC1(bp, &ramrod);
}