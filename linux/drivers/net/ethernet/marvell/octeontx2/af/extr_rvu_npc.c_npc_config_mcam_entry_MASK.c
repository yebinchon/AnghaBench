#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
struct rvu {int dummy; } ;
struct npc_mcam {int banksize; int banks_per_entry; } ;
struct mcam_entry {int action; int vtag_action; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,struct npc_mcam*,int,int,int) ; 
 int FUNC6 (struct npc_mcam*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mcam_entry*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct rvu *rvu, struct npc_mcam *mcam,
				  int blkaddr, int index, u8 intf,
				  struct mcam_entry *entry, bool enable)
{
	int bank = FUNC6(mcam, index);
	int kw = 0, actbank, actindex;
	u64 cam0, cam1;

	actbank = bank; /* Save bank id, to set action later on */
	actindex = index;
	index &= (mcam->banksize - 1);

	/* CAM1 takes the comparison value and
	 * CAM0 specifies match for a bit in key being '0' or '1' or 'dontcare'.
	 * CAM1<n> = 0 & CAM0<n> = 1 => match if key<n> = 0
	 * CAM1<n> = 1 & CAM0<n> = 0 => match if key<n> = 1
	 * CAM1<n> = 0 & CAM0<n> = 0 => always match i.e dontcare.
	 */
	for (; bank < (actbank + mcam->banks_per_entry); bank++, kw = kw + 2) {
		/* Interface should be set in all banks */
		FUNC8(rvu, blkaddr,
			    FUNC1(index, bank, 1),
			    intf);
		FUNC8(rvu, blkaddr,
			    FUNC1(index, bank, 0),
			    ~intf & 0x3);

		/* Set the match key */
		FUNC7(entry, kw, &cam0, &cam1);
		FUNC8(rvu, blkaddr,
			    FUNC2(index, bank, 1), cam1);
		FUNC8(rvu, blkaddr,
			    FUNC2(index, bank, 0), cam0);

		FUNC7(entry, kw + 1, &cam0, &cam1);
		FUNC8(rvu, blkaddr,
			    FUNC3(index, bank, 1), cam1);
		FUNC8(rvu, blkaddr,
			    FUNC3(index, bank, 0), cam0);
	}

	/* Set 'action' */
	FUNC8(rvu, blkaddr,
		    FUNC0(index, actbank), entry->action);

	/* Set TAG 'action' */
	FUNC8(rvu, blkaddr, FUNC4(index, actbank),
		    entry->vtag_action);

	/* Enable the entry */
	if (enable)
		FUNC5(rvu, mcam, blkaddr, actindex, true);
	else
		FUNC5(rvu, mcam, blkaddr, actindex, false);
}