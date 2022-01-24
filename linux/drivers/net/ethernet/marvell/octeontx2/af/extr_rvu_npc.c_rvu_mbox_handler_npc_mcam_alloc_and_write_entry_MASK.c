#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam_alloc_entry_rsp {size_t entry; int /*<<< orphan*/  count; } ;
struct TYPE_6__ {int /*<<< orphan*/  pcifunc; } ;
struct npc_mcam_alloc_entry_req {int contig; int count; int /*<<< orphan*/  ref_entry; int /*<<< orphan*/  priority; TYPE_2__ hdr; } ;
struct npc_mcam_alloc_counter_rsp {size_t cntr; } ;
struct TYPE_7__ {int /*<<< orphan*/  pcifunc; } ;
struct npc_mcam_alloc_counter_req {int contig; int count; TYPE_3__ hdr; } ;
struct npc_mcam_alloc_and_write_entry_rsp {size_t entry; size_t cntr; } ;
struct TYPE_8__ {int /*<<< orphan*/  pcifunc; } ;
struct npc_mcam_alloc_and_write_entry_req {scalar_t__ alloc_cntr; int /*<<< orphan*/  enable_entry; int /*<<< orphan*/  entry_data; int /*<<< orphan*/  intf; TYPE_4__ hdr; int /*<<< orphan*/  ref_entry; int /*<<< orphan*/  priority; } ;
struct npc_mcam {int /*<<< orphan*/  lock; scalar_t__* entry2pfvf_map; } ;
struct TYPE_5__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 int /*<<< orphan*/  NIX_INTF_RX ; 
 int /*<<< orphan*/  NIX_INTF_TX ; 
 int NPC_MCAM_ALLOC_FAILED ; 
 size_t NPC_MCAM_ENTRY_INVALID ; 
 int NPC_MCAM_INVALID_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,struct npc_mcam*,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,struct npc_mcam*,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct npc_mcam*,size_t) ; 
 int FUNC5 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rvu*,struct npc_mcam_alloc_counter_req*,struct npc_mcam_alloc_counter_rsp*) ; 
 int FUNC7 (struct rvu*,struct npc_mcam_alloc_entry_req*,struct npc_mcam_alloc_entry_rsp*) ; 

int FUNC8(struct rvu *rvu,
			  struct npc_mcam_alloc_and_write_entry_req *req,
			  struct npc_mcam_alloc_and_write_entry_rsp *rsp)
{
	struct npc_mcam_alloc_counter_req cntr_req;
	struct npc_mcam_alloc_counter_rsp cntr_rsp;
	struct npc_mcam_alloc_entry_req entry_req;
	struct npc_mcam_alloc_entry_rsp entry_rsp;
	struct npc_mcam *mcam = &rvu->hw->mcam;
	u16 entry = NPC_MCAM_ENTRY_INVALID;
	u16 cntr = NPC_MCAM_ENTRY_INVALID;
	int blkaddr, rc;

	blkaddr = FUNC5(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return NPC_MCAM_INVALID_REQ;

	if (req->intf != NIX_INTF_RX && req->intf != NIX_INTF_TX)
		return NPC_MCAM_INVALID_REQ;

	/* Try to allocate a MCAM entry */
	entry_req.hdr.pcifunc = req->hdr.pcifunc;
	entry_req.contig = true;
	entry_req.priority = req->priority;
	entry_req.ref_entry = req->ref_entry;
	entry_req.count = 1;

	rc = FUNC7(rvu,
						   &entry_req, &entry_rsp);
	if (rc)
		return rc;

	if (!entry_rsp.count)
		return NPC_MCAM_ALLOC_FAILED;

	entry = entry_rsp.entry;

	if (!req->alloc_cntr)
		goto write_entry;

	/* Now allocate counter */
	cntr_req.hdr.pcifunc = req->hdr.pcifunc;
	cntr_req.contig = true;
	cntr_req.count = 1;

	rc = FUNC6(rvu, &cntr_req, &cntr_rsp);
	if (rc) {
		/* Free allocated MCAM entry */
		FUNC0(&mcam->lock);
		mcam->entry2pfvf_map[entry] = 0;
		FUNC4(mcam, entry);
		FUNC1(&mcam->lock);
		return rc;
	}

	cntr = cntr_rsp.cntr;

write_entry:
	FUNC0(&mcam->lock);
	FUNC2(rvu, mcam, blkaddr, entry, req->intf,
			      &req->entry_data, req->enable_entry);

	if (req->alloc_cntr)
		FUNC3(rvu, mcam, blkaddr, entry, cntr);
	FUNC1(&mcam->lock);

	rsp->entry = entry;
	rsp->cntr = cntr;

	return 0;
}