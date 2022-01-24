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
struct bnx2x_virtf {int /*<<< orphan*/  filter_state; int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_vf_queue {int /*<<< orphan*/  cid; } ;
struct bnx2x_rx_mode_ramrod_params {unsigned long rx_accept_flags; unsigned long tx_accept_flags; int /*<<< orphan*/  rdata_mapping; int /*<<< orphan*/  rdata; int /*<<< orphan*/  ramrod_flags; int /*<<< orphan*/  state; int /*<<< orphan*/ * pstate; int /*<<< orphan*/  func_id; int /*<<< orphan*/ * rx_mode_obj; int /*<<< orphan*/  cl_id; int /*<<< orphan*/  cid; } ;
struct bnx2x {int /*<<< orphan*/  rx_mode_obj; } ;
struct TYPE_2__ {int /*<<< orphan*/  e2; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_FILTER_RX_MODE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RAMROD_RX ; 
 int /*<<< orphan*/  RAMROD_TX ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x_rx_mode_ramrod_params*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ rx_mode_rdata ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ; 
 struct bnx2x_vf_queue* FUNC6 (struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct bnx2x *bp, u8 qid,
				  struct bnx2x_rx_mode_ramrod_params *ramrod,
				  struct bnx2x_virtf *vf,
				  unsigned long accept_flags)
{
	struct bnx2x_vf_queue *vfq = FUNC6(vf, qid);

	FUNC3(ramrod, 0, sizeof(*ramrod));
	ramrod->cid = vfq->cid;
	ramrod->cl_id = FUNC5(vf, vfq);
	ramrod->rx_mode_obj = &bp->rx_mode_obj;
	ramrod->func_id = FUNC0(vf->abs_vfid);
	ramrod->rx_accept_flags = accept_flags;
	ramrod->tx_accept_flags = accept_flags;
	ramrod->pstate = &vf->filter_state;
	ramrod->state = BNX2X_FILTER_RX_MODE_PENDING;

	FUNC4(BNX2X_FILTER_RX_MODE_PENDING, &vf->filter_state);
	FUNC4(RAMROD_RX, &ramrod->ramrod_flags);
	FUNC4(RAMROD_TX, &ramrod->ramrod_flags);

	ramrod->rdata = FUNC1(bp, vf, rx_mode_rdata.e2);
	ramrod->rdata_mapping = FUNC2(bp, vf, rx_mode_rdata.e2);
}