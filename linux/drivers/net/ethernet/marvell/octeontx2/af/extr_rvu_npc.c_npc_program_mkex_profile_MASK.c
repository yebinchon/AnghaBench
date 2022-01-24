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
struct rvu {int dummy; } ;
struct npc_mcam_kex {int /*<<< orphan*/ *** intf_ld_flags; int /*<<< orphan*/ **** intf_lid_lt_ld; int /*<<< orphan*/ * kex_ld_flags; int /*<<< orphan*/ * keyx_cfg; } ;

/* Variables and functions */
 size_t NIX_INTF_RX ; 
 size_t NIX_INTF_TX ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NPC_MAX_LD ; 
 int NPC_MAX_LFL ; 
 int NPC_MAX_LID ; 
 int NPC_MAX_LT ; 
 int /*<<< orphan*/  FUNC2 (size_t,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rvu *rvu, int blkaddr,
				     struct npc_mcam_kex *mkex)
{
	int lid, lt, ld, fl;

	FUNC4(rvu, blkaddr, FUNC0(NIX_INTF_RX),
		    mkex->keyx_cfg[NIX_INTF_RX]);
	FUNC4(rvu, blkaddr, FUNC0(NIX_INTF_TX),
		    mkex->keyx_cfg[NIX_INTF_TX]);

	for (ld = 0; ld < NPC_MAX_LD; ld++)
		FUNC4(rvu, blkaddr, FUNC1(ld),
			    mkex->kex_ld_flags[ld]);

	for (lid = 0; lid < NPC_MAX_LID; lid++) {
		for (lt = 0; lt < NPC_MAX_LT; lt++) {
			for (ld = 0; ld < NPC_MAX_LD; ld++) {
				FUNC2(NIX_INTF_RX, lid, lt, ld,
					   mkex->intf_lid_lt_ld[NIX_INTF_RX]
					   [lid][lt][ld]);

				FUNC2(NIX_INTF_TX, lid, lt, ld,
					   mkex->intf_lid_lt_ld[NIX_INTF_TX]
					   [lid][lt][ld]);
			}
		}
	}

	for (ld = 0; ld < NPC_MAX_LD; ld++) {
		for (fl = 0; fl < NPC_MAX_LFL; fl++) {
			FUNC3(NIX_INTF_RX, ld, fl,
					mkex->intf_ld_flags[NIX_INTF_RX]
					[ld][fl]);

			FUNC3(NIX_INTF_TX, ld, fl,
					mkex->intf_ld_flags[NIX_INTF_TX]
					[ld][fl]);
		}
	}
}