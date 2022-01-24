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
typedef  int u64 ;
typedef  int u32 ;
struct xgene_enet_desc_ring {int* state; int dma; int cfgsize; } ;
typedef  enum xgene_enet_ring_cfgsize { ____Placeholder_xgene_enet_ring_cfgsize } xgene_enet_ring_cfgsize ;

/* Variables and functions */
 int ACCEPTLERR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int QCOHERENT ; 
 int RINGADDRH_LEN ; 
 int RINGADDRH_POS ; 
 int RINGADDRL_LEN ; 
 int RINGADDRL_POS ; 
 int /*<<< orphan*/  RINGSIZE_LEN ; 
 int RINGSIZE_POS ; 
 int /*<<< orphan*/  SELTHRSH_LEN ; 
 int SELTHRSH_POS ; 

__attribute__((used)) static void FUNC2(struct xgene_enet_desc_ring *ring)
{
	u32 *ring_cfg = ring->state;
	u64 addr = ring->dma;
	enum xgene_enet_ring_cfgsize cfgsize = ring->cfgsize;

	ring_cfg[4] |= (1 << SELTHRSH_POS) &
			FUNC0(SELTHRSH_POS, SELTHRSH_LEN);
	ring_cfg[3] |= ACCEPTLERR;
	ring_cfg[2] |= QCOHERENT;

	addr >>= 8;
	ring_cfg[2] |= (addr << RINGADDRL_POS) &
			FUNC1(RINGADDRL_POS, RINGADDRL_LEN);
	addr >>= RINGADDRL_LEN;
	ring_cfg[3] |= addr & FUNC1(RINGADDRH_POS, RINGADDRH_LEN);
	ring_cfg[3] |= ((u32)cfgsize << RINGSIZE_POS) &
			FUNC0(RINGSIZE_POS, RINGSIZE_LEN);
}