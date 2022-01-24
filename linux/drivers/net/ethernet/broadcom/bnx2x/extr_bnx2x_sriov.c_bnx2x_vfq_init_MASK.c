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
typedef  int /*<<< orphan*/  u8 ;
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; } ;
struct TYPE_2__ {int /*<<< orphan*/  func_id; } ;
struct bnx2x_vf_queue {int sp_initialized; int /*<<< orphan*/  cid; TYPE_1__ sp_obj; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  BNX2X_Q_TYPE_HAS_RX ; 
 int /*<<< orphan*/  BNX2X_Q_TYPE_HAS_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_data ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ; 

__attribute__((used)) static void FUNC7(struct bnx2x *bp, struct bnx2x_virtf *vf,
			   struct bnx2x_vf_queue *q)
{
	u8 cl_id = FUNC6(vf, q);
	u8 func_id = FUNC1(vf->abs_vfid);
	unsigned long q_type = 0;

	FUNC5(BNX2X_Q_TYPE_HAS_TX, &q_type);
	FUNC5(BNX2X_Q_TYPE_HAS_RX, &q_type);

	/* Queue State object */
	FUNC2(bp, &q->sp_obj,
			     cl_id, &q->cid, 1, func_id,
			     FUNC3(bp, vf, q_data),
			     FUNC4(bp, vf, q_data),
			     q_type);

	/* sp indication is set only when vlan/mac/etc. are initialized */
	q->sp_initialized = false;

	FUNC0(BNX2X_MSG_IOV,
	   "initialized vf %d's queue object. func id set to %d. cid set to 0x%x\n",
	   vf->abs_vfid, q->sp_obj.func_id, q->cid);
}