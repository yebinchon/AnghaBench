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
typedef  size_t u16 ;
struct rvu {TYPE_1__* hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  pcifunc; } ;
struct npc_mcam_oper_counter_req {size_t cntr; TYPE_2__ hdr; } ;
struct npc_mcam {size_t bmap_entries; size_t* entry2cntr_map; int /*<<< orphan*/  lock; int /*<<< orphan*/  bmap; int /*<<< orphan*/ * cntr_refcnt; int /*<<< orphan*/  counters; int /*<<< orphan*/ * cntr2pfvf_map; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_3__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 int /*<<< orphan*/  NPC_MCAM_INVALID_MAP ; 
 int NPC_MCAM_INVALID_REQ ; 
 size_t FUNC0 (int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct npc_mcam*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,struct npc_mcam*,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC6 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct rvu *rvu,
		struct npc_mcam_oper_counter_req *req, struct msg_rsp *rsp)
{
	struct npc_mcam *mcam = &rvu->hw->mcam;
	u16 index, entry = 0;
	int blkaddr, err;

	blkaddr = FUNC6(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return NPC_MCAM_INVALID_REQ;

	FUNC1(&mcam->lock);
	err = FUNC3(mcam, req->hdr.pcifunc, req->cntr);
	if (err) {
		FUNC2(&mcam->lock);
		return err;
	}

	/* Mark counter as free/unused */
	mcam->cntr2pfvf_map[req->cntr] = NPC_MCAM_INVALID_MAP;
	FUNC5(&mcam->counters, req->cntr);

	/* Disable all MCAM entry's stats which are using this counter */
	while (entry < mcam->bmap_entries) {
		if (!mcam->cntr_refcnt[req->cntr])
			break;

		index = FUNC0(mcam->bmap, mcam->bmap_entries, entry);
		if (index >= mcam->bmap_entries)
			break;
		if (mcam->entry2cntr_map[index] != req->cntr)
			continue;

		entry = index + 1;
		FUNC4(rvu, mcam, blkaddr,
					      index, req->cntr);
	}

	FUNC2(&mcam->lock);
	return 0;
}