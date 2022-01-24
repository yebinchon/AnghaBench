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
struct rvu {int /*<<< orphan*/  mkex_pfl_name; } ;
struct npc_get_kex_cfg_rsp {int /*<<< orphan*/  mkex_pfl_name; void**** intf_ld_flags; int /*<<< orphan*/ * kex_ld_flags; void***** intf_lid_lt_ld; void* tx_keyx_cfg; void* rx_keyx_cfg; } ;
struct msg_req {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (size_t,int,int,int) ; 
 void* FUNC3 (size_t,int,int) ; 
 int /*<<< orphan*/  MKEX_NAME_LEN ; 
 size_t NIX_INTF_RX ; 
 size_t NIX_INTF_TX ; 
 int NPC_MAX_LD ; 
 int NPC_MAX_LFL ; 
 int NPC_MAX_LID ; 
 int NPC_MAX_LT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct rvu *rvu, struct msg_req *req,
				     struct npc_get_kex_cfg_rsp *rsp)
{
	int lid, lt, ld, fl;

	rsp->rx_keyx_cfg = FUNC0(NIX_INTF_RX);
	rsp->tx_keyx_cfg = FUNC0(NIX_INTF_TX);
	for (lid = 0; lid < NPC_MAX_LID; lid++) {
		for (lt = 0; lt < NPC_MAX_LT; lt++) {
			for (ld = 0; ld < NPC_MAX_LD; ld++) {
				rsp->intf_lid_lt_ld[NIX_INTF_RX][lid][lt][ld] =
					FUNC2(NIX_INTF_RX, lid, lt, ld);
				rsp->intf_lid_lt_ld[NIX_INTF_TX][lid][lt][ld] =
					FUNC2(NIX_INTF_TX, lid, lt, ld);
			}
		}
	}
	for (ld = 0; ld < NPC_MAX_LD; ld++)
		rsp->kex_ld_flags[ld] = FUNC1(ld);

	for (ld = 0; ld < NPC_MAX_LD; ld++) {
		for (fl = 0; fl < NPC_MAX_LFL; fl++) {
			rsp->intf_ld_flags[NIX_INTF_RX][ld][fl] =
					FUNC3(NIX_INTF_RX, ld, fl);
			rsp->intf_ld_flags[NIX_INTF_TX][ld][fl] =
					FUNC3(NIX_INTF_TX, ld, fl);
		}
	}
	FUNC4(rsp->mkex_pfl_name, rvu->mkex_pfl_name, MKEX_NAME_LEN);
	return 0;
}