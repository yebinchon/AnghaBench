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
typedef  int u32 ;
struct status_block {int status_attn_bits; int status_attn_bits_ack; } ;
struct TYPE_2__ {struct status_block* msi; } ;
struct bnx2_napi {TYPE_1__ status_blk; } ;
struct bnx2 {int hc_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_HC_COMMAND ; 
 int BNX2_HC_COMMAND_COAL_NOW_WO_INT ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int STATUS_ATTN_EVENTS ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,struct bnx2_napi*) ; 

__attribute__((used)) static void FUNC3(struct bnx2 *bp, struct bnx2_napi *bnapi)
{
	struct status_block *sblk = bnapi->status_blk.msi;
	u32 status_attn_bits = sblk->status_attn_bits;
	u32 status_attn_bits_ack = sblk->status_attn_bits_ack;

	if ((status_attn_bits & STATUS_ATTN_EVENTS) !=
	    (status_attn_bits_ack & STATUS_ATTN_EVENTS)) {

		FUNC2(bp, bnapi);

		/* This is needed to take care of transient status
		 * during link changes.
		 */
		FUNC1(bp, BNX2_HC_COMMAND,
			bp->hc_cmd | BNX2_HC_COMMAND_COAL_NOW_WO_INT);
		FUNC0(bp, BNX2_HC_COMMAND);
	}
}