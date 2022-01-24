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
typedef  scalar_t__ u16 ;
struct rvu {TYPE_1__* hw; } ;
struct TYPE_4__ {scalar_t__ pcifunc; } ;
struct npc_mcam_free_entry_req {size_t entry; scalar_t__ all; TYPE_2__ hdr; } ;
struct npc_mcam {scalar_t__* entry2cntr_map; int /*<<< orphan*/  lock; scalar_t__* entry2pfvf_map; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_3__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 scalar_t__ NPC_MCAM_INVALID_MAP ; 
 int NPC_MCAM_INVALID_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct rvu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,struct npc_mcam*,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct npc_mcam*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,struct npc_mcam*,int,scalar_t__) ; 
 int FUNC6 (struct npc_mcam*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct rvu*,struct npc_mcam*,int,size_t,scalar_t__) ; 
 int FUNC8 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct rvu *rvu,
					 struct npc_mcam_free_entry_req *req,
					 struct msg_rsp *rsp)
{
	struct npc_mcam *mcam = &rvu->hw->mcam;
	u16 pcifunc = req->hdr.pcifunc;
	int blkaddr, rc = 0;
	u16 cntr;

	blkaddr = FUNC8(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return NPC_MCAM_INVALID_REQ;

	/* Free request from PFFUNC with no NIXLF attached, ignore */
	if (!FUNC0(rvu, pcifunc))
		return NPC_MCAM_INVALID_REQ;

	FUNC1(&mcam->lock);

	if (req->all)
		goto free_all;

	rc = FUNC6(mcam, pcifunc, req->entry);
	if (rc)
		goto exit;

	mcam->entry2pfvf_map[req->entry] = 0;
	FUNC4(mcam, req->entry);
	FUNC3(rvu, mcam, blkaddr, req->entry, false);

	/* Update entry2counter mapping */
	cntr = mcam->entry2cntr_map[req->entry];
	if (cntr != NPC_MCAM_INVALID_MAP)
		FUNC7(rvu, mcam, blkaddr,
					      req->entry, cntr);

	goto exit;

free_all:
	/* Free up all entries allocated to requesting PFFUNC */
	FUNC5(rvu, mcam, blkaddr, pcifunc);
exit:
	FUNC2(&mcam->lock);
	return rc;
}