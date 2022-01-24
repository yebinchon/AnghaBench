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
typedef  union enetc_rx_bd {int dummy; } enetc_rx_bd ;
struct enetc_bdr {int bd_count; int /*<<< orphan*/ * rx_swbd; int /*<<< orphan*/ * bd_base; int /*<<< orphan*/  bd_dma_base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct enetc_bdr *rxr)
{
	int size;

	size = rxr->bd_count * sizeof(union enetc_rx_bd);

	FUNC0(rxr->dev, size, rxr->bd_base, rxr->bd_dma_base);
	rxr->bd_base = NULL;

	FUNC1(rxr->rx_swbd);
	rxr->rx_swbd = NULL;
}