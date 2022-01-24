#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfp_net_rx_ring {TYPE_1__* r_vec; int /*<<< orphan*/  cnt; int /*<<< orphan*/  dma; } ;
struct nfp_net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct nfp_net *nn,
			     struct nfp_net_rx_ring *rx_ring, unsigned int idx)
{
	/* Write the DMA address, size and MSI-X info to the device */
	FUNC5(nn, FUNC0(idx), rx_ring->dma);
	FUNC4(nn, FUNC1(idx), FUNC3(rx_ring->cnt));
	FUNC4(nn, FUNC2(idx), rx_ring->r_vec->irq_entry);
}