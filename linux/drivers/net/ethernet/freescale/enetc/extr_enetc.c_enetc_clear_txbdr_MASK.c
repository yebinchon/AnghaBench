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
struct enetc_hw {int dummy; } ;
struct enetc_bdr {int index; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_TBMR ; 
 int /*<<< orphan*/  ENETC_TBSR ; 
 int ENETC_TBSR_BUSY ; 
 int FUNC0 (struct enetc_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(struct enetc_hw *hw, struct enetc_bdr *tx_ring)
{
	int delay = 8, timeout = 100;
	int idx = tx_ring->index;

	/* disable EN bit on ring */
	FUNC1(hw, idx, ENETC_TBMR, 0);

	/* wait for busy to clear */
	while (delay < timeout &&
	       FUNC0(hw, idx, ENETC_TBSR) & ENETC_TBSR_BUSY) {
		FUNC2(delay);
		delay *= 2;
	}

	if (delay >= timeout)
		FUNC3(tx_ring->ndev, "timeout for tx ring #%d clear\n",
			    idx);
}