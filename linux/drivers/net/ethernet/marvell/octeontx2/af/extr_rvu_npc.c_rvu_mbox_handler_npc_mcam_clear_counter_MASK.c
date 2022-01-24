#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rvu {TYPE_2__* hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  pcifunc; } ;
struct npc_mcam_oper_counter_req {int /*<<< orphan*/  cntr; TYPE_1__ hdr; } ;
struct npc_mcam {int /*<<< orphan*/  lock; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_4__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NPC_MCAM_INVALID_REQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct npc_mcam*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct rvu *rvu,
		struct npc_mcam_oper_counter_req *req, struct msg_rsp *rsp)
{
	struct npc_mcam *mcam = &rvu->hw->mcam;
	int blkaddr, err;

	blkaddr = FUNC4(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return NPC_MCAM_INVALID_REQ;

	FUNC1(&mcam->lock);
	err = FUNC3(mcam, req->hdr.pcifunc, req->cntr);
	FUNC2(&mcam->lock);
	if (err)
		return err;

	FUNC5(rvu, blkaddr, FUNC0(req->cntr), 0x00);

	return 0;
}