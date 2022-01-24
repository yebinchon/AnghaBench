#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int bytes; unsigned int packets; } ;
struct i40e_ring {TYPE_2__* q_vector; int /*<<< orphan*/  syncp; TYPE_1__ stats; } ;
struct TYPE_6__ {unsigned int total_bytes; unsigned int total_packets; } ;
struct TYPE_5__ {TYPE_3__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct i40e_ring *tx_ring,
					unsigned int total_packets,
					unsigned int total_bytes)
{
	FUNC0(&tx_ring->syncp);
	tx_ring->stats.bytes += total_bytes;
	tx_ring->stats.packets += total_packets;
	FUNC1(&tx_ring->syncp);
	tx_ring->q_vector->tx.total_bytes += total_bytes;
	tx_ring->q_vector->tx.total_packets += total_packets;
}