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
typedef  int u32 ;
struct ethtool_coalesce {int tx_max_coalesced_frames; int tx_coalesce_usecs; } ;
struct bcm_sysport_tx_ring {int /*<<< orphan*/  index; struct bcm_sysport_priv* priv; } ;
struct bcm_sysport_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int RING_INTR_THRESH_MASK ; 
 int RING_TIMEOUT_MASK ; 
 int RING_TIMEOUT_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_sysport_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bcm_sysport_tx_ring *ring,
					struct ethtool_coalesce *ec)
{
	struct bcm_sysport_priv *priv = ring->priv;
	u32 reg;

	reg = FUNC2(priv, FUNC1(ring->index));
	reg &= ~(RING_INTR_THRESH_MASK |
		 RING_TIMEOUT_MASK << RING_TIMEOUT_SHIFT);
	reg |= ec->tx_max_coalesced_frames;
	reg |= FUNC0(ec->tx_coalesce_usecs * 1000, 8192) <<
			    RING_TIMEOUT_SHIFT;
	FUNC3(priv, reg, FUNC1(ring->index));
}