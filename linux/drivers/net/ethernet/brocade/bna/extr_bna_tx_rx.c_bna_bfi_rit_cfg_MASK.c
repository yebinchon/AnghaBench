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
struct TYPE_9__ {void* num_entries; } ;
struct bfi_enet_rit_req {TYPE_4__ mh; int /*<<< orphan*/ * table; void* size; } ;
struct TYPE_6__ {struct bfi_enet_rit_req rit_req; } ;
struct bna_rxf {int /*<<< orphan*/  msgq_cmd; TYPE_3__* rx; int /*<<< orphan*/  rit_size; int /*<<< orphan*/  rit; TYPE_1__ bfi_enet_cmd; } ;
struct TYPE_8__ {TYPE_2__* bna; int /*<<< orphan*/  rid; } ;
struct TYPE_7__ {int /*<<< orphan*/  msgq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_ENET_H2I_RIT_CFG_REQ ; 
 int /*<<< orphan*/  BFI_MC_ENET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bna_rxf *rxf)
{
	struct bfi_enet_rit_req *req = &rxf->bfi_enet_cmd.rit_req;

	FUNC2(req->mh, BFI_MC_ENET,
		BFI_ENET_H2I_RIT_CFG_REQ, 0, rxf->rx->rid);
	req->mh.num_entries = FUNC4(
		FUNC3(sizeof(struct bfi_enet_rit_req)));
	req->size = FUNC4(rxf->rit_size);
	FUNC5(&req->table[0], rxf->rit, rxf->rit_size);
	FUNC1(&rxf->msgq_cmd, NULL, NULL,
		sizeof(struct bfi_enet_rit_req), &req->mh);
	FUNC0(&rxf->rx->bna->msgq, &rxf->msgq_cmd);
}