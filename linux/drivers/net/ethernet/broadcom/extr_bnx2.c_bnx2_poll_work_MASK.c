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
struct bnx2_tx_ring_info {scalar_t__ hw_tx_cons; } ;
struct bnx2_rx_ring_info {scalar_t__ rx_cons; } ;
struct bnx2_napi {struct bnx2_rx_ring_info rx_ring; struct bnx2_tx_ring_info tx_ring; } ;
struct bnx2 {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2_napi*) ; 
 scalar_t__ FUNC1 (struct bnx2_napi*) ; 
 scalar_t__ FUNC2 (struct bnx2*,struct bnx2_napi*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*,struct bnx2_napi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bnx2 *bp, struct bnx2_napi *bnapi,
			  int work_done, int budget)
{
	struct bnx2_tx_ring_info *txr = &bnapi->tx_ring;
	struct bnx2_rx_ring_info *rxr = &bnapi->rx_ring;

	if (FUNC1(bnapi) != txr->hw_tx_cons)
		FUNC3(bp, bnapi, 0);

	if (FUNC0(bnapi) != rxr->rx_cons)
		work_done += FUNC2(bp, bnapi, budget - work_done);

	return work_done;
}