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
struct host_hc_status_block_e2 {int dummy; } ;
struct host_hc_status_block_e1x {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  e1x_sb; int /*<<< orphan*/  e2_sb; } ;
struct bnx2x {int /*<<< orphan*/  t2_mapping; int /*<<< orphan*/  t2; int /*<<< orphan*/  cnic_sb_mapping; TYPE_1__ cnic_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  ILT_MEMOP_FREE ; 
 int SRC_T2_SZ ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 

void FUNC3(struct bnx2x *bp)
{
	FUNC2(bp, ILT_MEMOP_FREE);

	if (!FUNC1(bp))
		FUNC0(bp->cnic_sb.e2_sb, bp->cnic_sb_mapping,
			       sizeof(struct host_hc_status_block_e2));
	else
		FUNC0(bp->cnic_sb.e1x_sb, bp->cnic_sb_mapping,
			       sizeof(struct host_hc_status_block_e1x));

	FUNC0(bp->t2, bp->t2_mapping, SRC_T2_SZ);
}