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
typedef  union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
typedef  int u64 ;
typedef  int u32 ;
struct igbvf_ring {int dma; int count; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct e1000_hw {int dummy; } ;
struct igbvf_adapter {struct igbvf_ring* rx_ring; struct e1000_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int E1000_RXDCTL_QUEUE_ENABLE ; 
 int IGBVF_RX_HTHRESH ; 
 int IGBVF_RX_PTHRESH ; 
 int IGBVF_RX_WTHRESH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct igbvf_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	struct igbvf_ring *rx_ring = adapter->rx_ring;
	u64 rdba;
	u32 rxdctl;

	/* disable receives */
	rxdctl = FUNC10(FUNC8(0));
	FUNC11(FUNC8(0), rxdctl & ~E1000_RXDCTL_QUEUE_ENABLE);
	FUNC9();
	FUNC13(10);

	/* Setup the HW Rx Head and Tail Descriptor Pointers and
	 * the Base and Length of the Rx Descriptor Ring
	 */
	rdba = rx_ring->dma;
	FUNC11(FUNC4(0), (rdba & FUNC0(32)));
	FUNC11(FUNC3(0), (rdba >> 32));
	FUNC11(FUNC6(0), rx_ring->count * sizeof(union e1000_adv_rx_desc));
	rx_ring->head = FUNC1(0);
	rx_ring->tail = FUNC2(0);
	FUNC11(FUNC5(0), 0);
	FUNC11(FUNC7(0), 0);

	rxdctl |= E1000_RXDCTL_QUEUE_ENABLE;
	rxdctl &= 0xFFF00000;
	rxdctl |= IGBVF_RX_PTHRESH;
	rxdctl |= IGBVF_RX_HTHRESH << 8;
	rxdctl |= IGBVF_RX_WTHRESH << 16;

	FUNC12(adapter);

	/* enable receives */
	FUNC11(FUNC8(0), rxdctl);
}