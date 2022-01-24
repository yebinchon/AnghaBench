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
typedef  union enetc_tx_bd {int dummy; } enetc_tx_bd ;
struct enetc_bdr {int bd_count; int /*<<< orphan*/ * tx_swbd; int /*<<< orphan*/ * bd_base; int /*<<< orphan*/  bd_dma_base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_bdr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct enetc_bdr *txr)
{
	int size, i;

	for (i = 0; i < txr->bd_count; i++)
		FUNC1(txr, &txr->tx_swbd[i]);

	size = txr->bd_count * sizeof(union enetc_tx_bd);

	FUNC0(txr->dev, size, txr->bd_base, txr->bd_dma_base);
	txr->bd_base = NULL;

	FUNC2(txr->tx_swbd);
	txr->tx_swbd = NULL;
}