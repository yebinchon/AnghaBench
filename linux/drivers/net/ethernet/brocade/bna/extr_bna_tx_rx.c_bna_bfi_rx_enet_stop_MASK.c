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
struct TYPE_7__ {int /*<<< orphan*/  num_entries; } ;
struct bfi_enet_req {TYPE_3__ mh; } ;
struct TYPE_6__ {struct bfi_enet_req req; } ;
struct bna_rx {int /*<<< orphan*/  msgq_cmd; TYPE_1__* bna; int /*<<< orphan*/  rid; TYPE_2__ bfi_enet_cmd; } ;
struct TYPE_5__ {int /*<<< orphan*/  msgq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_ENET_H2I_RX_CFG_CLR_REQ ; 
 int /*<<< orphan*/  BFI_MC_ENET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bna_rx *rx)
{
	struct bfi_enet_req *req = &rx->bfi_enet_cmd.req;

	FUNC2(req->mh, BFI_MC_ENET,
		BFI_ENET_H2I_RX_CFG_CLR_REQ, 0, rx->rid);
	req->mh.num_entries = FUNC4(
		FUNC3(sizeof(struct bfi_enet_req)));
	FUNC1(&rx->msgq_cmd, NULL, NULL, sizeof(struct bfi_enet_req),
		&req->mh);
	FUNC0(&rx->bna->msgq, &rx->msgq_cmd);
}