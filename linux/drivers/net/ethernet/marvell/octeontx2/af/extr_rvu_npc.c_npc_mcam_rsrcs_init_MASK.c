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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct rvu {int /*<<< orphan*/  dev; TYPE_1__* hw; } ;
struct TYPE_4__ {int max; int /*<<< orphan*/  bmap; } ;
struct npc_mcam {int banks; int banksize; int total_entries; int keysize; int banks_per_entry; int bmap_entries; int nixlf_offset; int pf_offset; int bmap_fcnt; int lprio_count; int lprio_start; int hprio_count; int hprio_end; TYPE_2__ counters; int /*<<< orphan*/  lock; void* cntr_refcnt; void* entry2cntr_map; void* cntr2pfvf_map; void* entry2pfvf_map; void* bmap_reverse; void* bmap; } ;
struct TYPE_3__ {int total_pfs; struct npc_mcam mcam; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NPC_AF_CONST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int NPC_MCAM_KEY_X2 ; 
 int NPC_MCAM_KEY_X4 ; 
 int RSVD_MCAM_ENTRIES_PER_NIXLF ; 
 int RSVD_MCAM_ENTRIES_PER_PF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (struct rvu*) ; 
 int FUNC10 (struct rvu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct rvu *rvu, int blkaddr)
{
	int nixlf_count = FUNC9(rvu);
	struct npc_mcam *mcam = &rvu->hw->mcam;
	int rsvd, err;
	u64 cfg;

	/* Get HW limits */
	cfg = FUNC10(rvu, blkaddr, NPC_AF_CONST);
	mcam->banks = (cfg >> 44) & 0xF;
	mcam->banksize = (cfg >> 28) & 0xFFFF;
	mcam->counters.max = (cfg >> 48) & 0xFFFF;

	/* Actual number of MCAM entries vary by entry size */
	cfg = (FUNC10(rvu, blkaddr,
			  FUNC2(0)) >> 32) & 0x07;
	mcam->total_entries = (mcam->banks / FUNC1(cfg)) * mcam->banksize;
	mcam->keysize = cfg;

	/* Number of banks combined per MCAM entry */
	if (cfg == NPC_MCAM_KEY_X4)
		mcam->banks_per_entry = 4;
	else if (cfg == NPC_MCAM_KEY_X2)
		mcam->banks_per_entry = 2;
	else
		mcam->banks_per_entry = 1;

	/* Reserve one MCAM entry for each of the NIX LF to
	 * guarantee space to install default matching DMAC rule.
	 * Also reserve 2 MCAM entries for each PF for default
	 * channel based matching or 'bcast & promisc' matching to
	 * support BCAST and PROMISC modes of operation for PFs.
	 * PF0 is excluded.
	 */
	rsvd = (nixlf_count * RSVD_MCAM_ENTRIES_PER_NIXLF) +
		((rvu->hw->total_pfs - 1) * RSVD_MCAM_ENTRIES_PER_PF);
	if (mcam->total_entries <= rsvd) {
		FUNC3(rvu->dev,
			 "Insufficient NPC MCAM size %d for pkt I/O, exiting\n",
			 mcam->total_entries);
		return -ENOMEM;
	}

	mcam->bmap_entries = mcam->total_entries - rsvd;
	mcam->nixlf_offset = mcam->bmap_entries;
	mcam->pf_offset = mcam->nixlf_offset + nixlf_count;

	/* Allocate bitmaps for managing MCAM entries */
	mcam->bmap = FUNC4(rvu->dev, FUNC0(mcam->bmap_entries),
				  sizeof(long), GFP_KERNEL);
	if (!mcam->bmap)
		return -ENOMEM;

	mcam->bmap_reverse = FUNC4(rvu->dev,
					  FUNC0(mcam->bmap_entries),
					  sizeof(long), GFP_KERNEL);
	if (!mcam->bmap_reverse)
		return -ENOMEM;

	mcam->bmap_fcnt = mcam->bmap_entries;

	/* Alloc memory for saving entry to RVU PFFUNC allocation mapping */
	mcam->entry2pfvf_map = FUNC4(rvu->dev, mcam->bmap_entries,
					    sizeof(u16), GFP_KERNEL);
	if (!mcam->entry2pfvf_map)
		return -ENOMEM;

	/* Reserve 1/8th of MCAM entries at the bottom for low priority
	 * allocations and another 1/8th at the top for high priority
	 * allocations.
	 */
	mcam->lprio_count = mcam->bmap_entries / 8;
	if (mcam->lprio_count > BITS_PER_LONG)
		mcam->lprio_count = FUNC7(mcam->lprio_count,
					       BITS_PER_LONG);
	mcam->lprio_start = mcam->bmap_entries - mcam->lprio_count;
	mcam->hprio_count = mcam->lprio_count;
	mcam->hprio_end = mcam->hprio_count;

	/* Allocate bitmap for managing MCAM counters and memory
	 * for saving counter to RVU PFFUNC allocation mapping.
	 */
	err = FUNC8(&mcam->counters);
	if (err)
		return err;

	mcam->cntr2pfvf_map = FUNC4(rvu->dev, mcam->counters.max,
					   sizeof(u16), GFP_KERNEL);
	if (!mcam->cntr2pfvf_map)
		goto free_mem;

	/* Alloc memory for MCAM entry to counter mapping and for tracking
	 * counter's reference count.
	 */
	mcam->entry2cntr_map = FUNC4(rvu->dev, mcam->bmap_entries,
					    sizeof(u16), GFP_KERNEL);
	if (!mcam->entry2cntr_map)
		goto free_mem;

	mcam->cntr_refcnt = FUNC4(rvu->dev, mcam->counters.max,
					 sizeof(u16), GFP_KERNEL);
	if (!mcam->cntr_refcnt)
		goto free_mem;

	FUNC6(&mcam->lock);

	return 0;

free_mem:
	FUNC5(mcam->counters.bmap);
	return -ENOMEM;
}