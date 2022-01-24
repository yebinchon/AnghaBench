#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam_alloc_counter_rsp {int count; int cntr; int* cntr_list; } ;
struct TYPE_6__ {int pcifunc; } ;
struct npc_mcam_alloc_counter_req {int count; scalar_t__ contig; TYPE_2__ hdr; } ;
struct TYPE_7__ {int /*<<< orphan*/  bmap; int /*<<< orphan*/  max; } ;
struct npc_mcam {int* cntr2pfvf_map; int /*<<< orphan*/  lock; TYPE_3__ counters; } ;
struct TYPE_5__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 int NPC_MAX_NONCONTIG_COUNTERS ; 
 int NPC_MCAM_ALLOC_FAILED ; 
 int NPC_MCAM_INVALID_REQ ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rvu*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int FUNC6 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

int FUNC8(struct rvu *rvu,
			struct npc_mcam_alloc_counter_req *req,
			struct npc_mcam_alloc_counter_rsp *rsp)
{
	struct npc_mcam *mcam = &rvu->hw->mcam;
	u16 pcifunc = req->hdr.pcifunc;
	u16 max_contig, cntr;
	int blkaddr, index;

	blkaddr = FUNC6(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return NPC_MCAM_INVALID_REQ;

	/* If the request is from a PFFUNC with no NIXLF attached, ignore */
	if (!FUNC1(rvu, pcifunc))
		return NPC_MCAM_INVALID_REQ;

	/* Since list of allocated counter IDs needs to be sent to requester,
	 * max number of non-contiguous counters per mbox msg is limited.
	 */
	if (!req->contig && req->count > NPC_MAX_NONCONTIG_COUNTERS)
		return NPC_MCAM_INVALID_REQ;

	FUNC2(&mcam->lock);

	/* Check if unused counters are available or not */
	if (!FUNC7(&mcam->counters)) {
		FUNC3(&mcam->lock);
		return NPC_MCAM_ALLOC_FAILED;
	}

	rsp->count = 0;

	if (req->contig) {
		/* Allocate requested number of contiguous counters, if
		 * unsuccessful find max contiguous entries available.
		 */
		index = FUNC4(mcam->counters.bmap,
						mcam->counters.max, 0,
						req->count, &max_contig);
		rsp->count = max_contig;
		rsp->cntr = index;
		for (cntr = index; cntr < (index + max_contig); cntr++) {
			FUNC0(cntr, mcam->counters.bmap);
			mcam->cntr2pfvf_map[cntr] = pcifunc;
		}
	} else {
		/* Allocate requested number of non-contiguous counters,
		 * if unsuccessful allocate as many as possible.
		 */
		for (cntr = 0; cntr < req->count; cntr++) {
			index = FUNC5(&mcam->counters);
			if (index < 0)
				break;
			rsp->cntr_list[cntr] = index;
			rsp->count++;
			mcam->cntr2pfvf_map[index] = pcifunc;
		}
	}

	FUNC3(&mcam->lock);
	return 0;
}