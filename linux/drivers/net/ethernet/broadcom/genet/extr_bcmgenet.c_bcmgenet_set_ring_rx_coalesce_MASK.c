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
typedef  int /*<<< orphan*/  u32 ;
struct ethtool_coalesce {scalar_t__ use_adaptive_rx_coalesce; int /*<<< orphan*/  rx_max_coalesced_frames; int /*<<< orphan*/  rx_coalesce_usecs; } ;
struct dim_cq_moder {int /*<<< orphan*/  pkts; int /*<<< orphan*/  usec; } ;
struct TYPE_3__ {int /*<<< orphan*/  mode; } ;
struct TYPE_4__ {scalar_t__ use_dim; TYPE_1__ dim; } ;
struct bcmgenet_rx_ring {TYPE_2__ dim; int /*<<< orphan*/  rx_max_coalesced_frames; int /*<<< orphan*/  rx_coalesce_usecs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcmgenet_rx_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dim_cq_moder FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bcmgenet_rx_ring *ring,
					  struct ethtool_coalesce *ec)
{
	struct dim_cq_moder moder;
	u32 usecs, pkts;

	ring->rx_coalesce_usecs = ec->rx_coalesce_usecs;
	ring->rx_max_coalesced_frames = ec->rx_max_coalesced_frames;
	usecs = ring->rx_coalesce_usecs;
	pkts = ring->rx_max_coalesced_frames;

	if (ec->use_adaptive_rx_coalesce && !ring->dim.use_dim) {
		moder = FUNC1(ring->dim.dim.mode);
		usecs = moder.usec;
		pkts = moder.pkts;
	}

	ring->dim.use_dim = ec->use_adaptive_rx_coalesce;
	FUNC0(ring, usecs, pkts);
}