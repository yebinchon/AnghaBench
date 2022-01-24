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
typedef  int /*<<< orphan*/  u16 ;
struct rvu {TYPE_1__* hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  pcifunc; } ;
struct npc_mcam_ena_dis_entry_req {int /*<<< orphan*/  entry; TYPE_2__ hdr; } ;
struct npc_mcam {int /*<<< orphan*/  lock; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_3__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 int NPC_MCAM_INVALID_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,struct npc_mcam*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct npc_mcam*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct rvu *rvu,
					struct npc_mcam_ena_dis_entry_req *req,
					struct msg_rsp *rsp)
{
	struct npc_mcam *mcam = &rvu->hw->mcam;
	u16 pcifunc = req->hdr.pcifunc;
	int blkaddr, rc;

	blkaddr = FUNC4(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return NPC_MCAM_INVALID_REQ;

	FUNC0(&mcam->lock);
	rc = FUNC3(mcam, pcifunc, req->entry);
	FUNC1(&mcam->lock);
	if (rc)
		return rc;

	FUNC2(rvu, mcam, blkaddr, req->entry, true);

	return 0;
}