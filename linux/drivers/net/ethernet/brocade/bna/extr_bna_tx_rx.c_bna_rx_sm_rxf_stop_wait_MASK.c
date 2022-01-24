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
struct bna_rx {int /*<<< orphan*/  rxf; TYPE_1__* bna; int /*<<< orphan*/  (* rx_cleanup_cbfn ) (int /*<<< orphan*/ ,struct bna_rx*) ;} ;
typedef  enum bna_rx_event { ____Placeholder_bna_rx_event } bna_rx_event ;
struct TYPE_2__ {int /*<<< orphan*/  bnad; } ;

/* Variables and functions */
#define  RX_E_FAIL 130 
#define  RX_E_RXF_STARTED 129 
#define  RX_E_RXF_STOPPED 128 
 int /*<<< orphan*/  FUNC0 (struct bna_rx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bna_rx*) ; 
 int /*<<< orphan*/  bna_rx_sm_cleanup_wait ; 
 int /*<<< orphan*/  bna_rx_sm_stop_wait ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bna_rx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct bna_rx*) ; 

__attribute__((used)) static void
FUNC7(struct bna_rx *rx, enum bna_rx_event event)
{
	switch (event) {
	case RX_E_FAIL:
		FUNC0(rx, bna_rx_sm_cleanup_wait);
		FUNC3(&rx->rxf);
		FUNC5(rx);
		rx->rx_cleanup_cbfn(rx->bna->bnad, rx);
		break;

	case RX_E_RXF_STARTED:
		FUNC4(&rx->rxf);
		break;

	case RX_E_RXF_STOPPED:
		FUNC0(rx, bna_rx_sm_stop_wait);
		FUNC5(rx);
		FUNC2(rx);
		break;

	default:
		FUNC1(event);
		break;
	}

}