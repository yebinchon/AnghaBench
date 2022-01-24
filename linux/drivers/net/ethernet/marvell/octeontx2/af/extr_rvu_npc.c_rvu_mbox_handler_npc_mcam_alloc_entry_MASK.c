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
struct npc_mcam_alloc_entry_rsp {scalar_t__ free_count; int /*<<< orphan*/  entry; } ;
struct TYPE_4__ {int /*<<< orphan*/  pcifunc; } ;
struct npc_mcam_alloc_entry_req {scalar_t__ priority; int ref_entry; scalar_t__ count; int /*<<< orphan*/  contig; TYPE_2__ hdr; } ;
struct npc_mcam {int bmap_entries; } ;
struct TYPE_3__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 scalar_t__ NPC_MAX_NONCONTIG_ENTRIES ; 
 int NPC_MCAM_ALLOC_DENIED ; 
 int /*<<< orphan*/  NPC_MCAM_ENTRY_INVALID ; 
 scalar_t__ NPC_MCAM_HIGHER_PRIO ; 
 int NPC_MCAM_INVALID_REQ ; 
 scalar_t__ NPC_MCAM_LOWER_PRIO ; 
 int /*<<< orphan*/  FUNC0 (struct rvu*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct npc_mcam*,int /*<<< orphan*/ ,struct npc_mcam_alloc_entry_req*,struct npc_mcam_alloc_entry_rsp*) ; 
 int FUNC2 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct rvu *rvu,
					  struct npc_mcam_alloc_entry_req *req,
					  struct npc_mcam_alloc_entry_rsp *rsp)
{
	struct npc_mcam *mcam = &rvu->hw->mcam;
	u16 pcifunc = req->hdr.pcifunc;
	int blkaddr;

	blkaddr = FUNC2(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return NPC_MCAM_INVALID_REQ;

	rsp->entry = NPC_MCAM_ENTRY_INVALID;
	rsp->free_count = 0;

	/* Check if ref_entry is within range */
	if (req->priority && req->ref_entry >= mcam->bmap_entries)
		return NPC_MCAM_INVALID_REQ;

	/* ref_entry can't be '0' if requested priority is high.
	 * Can't be last entry if requested priority is low.
	 */
	if ((!req->ref_entry && req->priority == NPC_MCAM_HIGHER_PRIO) ||
	    ((req->ref_entry == (mcam->bmap_entries - 1)) &&
	     req->priority == NPC_MCAM_LOWER_PRIO))
		return NPC_MCAM_INVALID_REQ;

	/* Since list of allocated indices needs to be sent to requester,
	 * max number of non-contiguous entries per mbox msg is limited.
	 */
	if (!req->contig && req->count > NPC_MAX_NONCONTIG_ENTRIES)
		return NPC_MCAM_INVALID_REQ;

	/* Alloc request from PFFUNC with no NIXLF attached should be denied */
	if (!FUNC0(rvu, pcifunc))
		return NPC_MCAM_ALLOC_DENIED;

	return FUNC1(mcam, pcifunc, req, rsp);
}