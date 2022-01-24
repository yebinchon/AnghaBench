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
struct bcmgenet_rx_ring {unsigned int index; struct bcmgenet_priv* priv; } ;
struct bcmgenet_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  DMA_MBUF_DONE_THRESH ; 
 scalar_t__ DMA_RING0_TIMEOUT ; 
 int DMA_TIMEOUT_MASK ; 
 int FUNC1 (struct bcmgenet_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcmgenet_priv*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct bcmgenet_rx_ring *ring,
				     u32 usecs, u32 pkts)
{
	struct bcmgenet_priv *priv = ring->priv;
	unsigned int i = ring->index;
	u32 reg;

	FUNC2(priv, i, pkts, DMA_MBUF_DONE_THRESH);

	reg = FUNC1(priv, DMA_RING0_TIMEOUT + i);
	reg &= ~DMA_TIMEOUT_MASK;
	reg |= FUNC0(usecs * 1000, 8192);
	FUNC3(priv, reg, DMA_RING0_TIMEOUT + i);
}