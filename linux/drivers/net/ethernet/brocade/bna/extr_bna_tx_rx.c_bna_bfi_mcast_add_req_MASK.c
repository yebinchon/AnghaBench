#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  num_entries; } ;
struct bfi_enet_mcast_add_req {TYPE_4__ mh; int /*<<< orphan*/  mac_addr; } ;
struct TYPE_8__ {struct bfi_enet_mcast_add_req mcast_add_req; } ;
struct bna_rxf {int /*<<< orphan*/  msgq_cmd; TYPE_2__* rx; TYPE_3__ bfi_enet_cmd; } ;
struct bna_mac {int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {TYPE_1__* bna; int /*<<< orphan*/  rid; } ;
struct TYPE_6__ {int /*<<< orphan*/  msgq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_ENET_H2I_MAC_MCAST_ADD_REQ ; 
 int /*<<< orphan*/  BFI_MC_ENET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bna_rxf *rxf, struct bna_mac *mac)
{
	struct bfi_enet_mcast_add_req *req =
		&rxf->bfi_enet_cmd.mcast_add_req;

	FUNC2(req->mh, BFI_MC_ENET, BFI_ENET_H2I_MAC_MCAST_ADD_REQ,
		0, rxf->rx->rid);
	req->mh.num_entries = FUNC5(
	FUNC3(sizeof(struct bfi_enet_mcast_add_req)));
	FUNC4(req->mac_addr, mac->addr);
	FUNC1(&rxf->msgq_cmd, NULL, NULL,
		sizeof(struct bfi_enet_mcast_add_req), &req->mh);
	FUNC0(&rxf->rx->bna->msgq, &rxf->msgq_cmd);
}