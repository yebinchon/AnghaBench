#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {void* num_entries; } ;
struct TYPE_12__ {int /*<<< orphan*/  addr_lo; int /*<<< orphan*/  addr_hi; } ;
struct TYPE_13__ {TYPE_3__ a32; } ;
struct bfi_enet_stats_req {TYPE_8__ mh; TYPE_4__ host_buffer; void* rx_enet_mask; void* tx_enet_mask; void* stats_mask; } ;
struct TYPE_16__ {int stats_get_busy; int /*<<< orphan*/  stats_get_cmd; struct bfi_enet_stats_req stats_get; } ;
struct TYPE_14__ {int /*<<< orphan*/  lsb; int /*<<< orphan*/  msb; } ;
struct TYPE_15__ {TYPE_5__ hw_stats_dma; } ;
struct TYPE_11__ {int /*<<< orphan*/  rid_mask; } ;
struct TYPE_10__ {int /*<<< orphan*/  rid_mask; } ;
struct bna {TYPE_7__ stats_mod; int /*<<< orphan*/  msgq; TYPE_6__ stats; TYPE_2__ rx_mod; TYPE_1__ tx_mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_ENET_H2I_STATS_GET_REQ ; 
 int /*<<< orphan*/  BFI_ENET_STATS_ALL ; 
 int /*<<< orphan*/  BFI_MC_ENET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bna *bna)
{
	struct bfi_enet_stats_req *stats_req = &bna->stats_mod.stats_get;

	bna->stats_mod.stats_get_busy = true;

	FUNC2(stats_req->mh, BFI_MC_ENET,
		BFI_ENET_H2I_STATS_GET_REQ, 0, 0);
	stats_req->mh.num_entries = FUNC5(
		FUNC3(sizeof(struct bfi_enet_stats_req)));
	stats_req->stats_mask = FUNC5(BFI_ENET_STATS_ALL);
	stats_req->tx_enet_mask = FUNC4(bna->tx_mod.rid_mask);
	stats_req->rx_enet_mask = FUNC4(bna->rx_mod.rid_mask);
	stats_req->host_buffer.a32.addr_hi = bna->stats.hw_stats_dma.msb;
	stats_req->host_buffer.a32.addr_lo = bna->stats.hw_stats_dma.lsb;

	FUNC1(&bna->stats_mod.stats_get_cmd, NULL, NULL,
		sizeof(struct bfi_enet_stats_req), &stats_req->mh);
	FUNC0(&bna->msgq, &bna->stats_mod.stats_get_cmd);
}