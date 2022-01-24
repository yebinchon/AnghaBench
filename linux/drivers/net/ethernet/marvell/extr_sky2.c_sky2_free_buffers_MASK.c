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
struct sky2_tx_le {int dummy; } ;
struct sky2_port {int tx_ring_size; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/ * tx_le; int /*<<< orphan*/  tx_le_map; int /*<<< orphan*/ * rx_le; int /*<<< orphan*/  rx_le_map; struct sky2_hw* hw; } ;
struct sky2_hw {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int RX_LE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_port*) ; 

__attribute__((used)) static void FUNC3(struct sky2_port *sky2)
{
	struct sky2_hw *hw = sky2->hw;

	FUNC2(sky2);

	if (sky2->rx_le) {
		FUNC1(hw->pdev, RX_LE_BYTES,
				    sky2->rx_le, sky2->rx_le_map);
		sky2->rx_le = NULL;
	}
	if (sky2->tx_le) {
		FUNC1(hw->pdev,
				    sky2->tx_ring_size * sizeof(struct sky2_tx_le),
				    sky2->tx_le, sky2->tx_le_map);
		sky2->tx_le = NULL;
	}
	FUNC0(sky2->tx_ring);
	FUNC0(sky2->rx_ring);

	sky2->tx_ring = NULL;
	sky2->rx_ring = NULL;
}