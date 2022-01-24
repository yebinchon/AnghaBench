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
struct bna_rx {int dummy; } ;
typedef  enum bna_rx_event { ____Placeholder_bna_rx_event } bna_rx_event ;

/* Variables and functions */
#define  RX_E_FAIL 130 
#define  RX_E_STARTED 129 
#define  RX_E_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bna_rx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  bna_rx_sm_rxf_start_wait ; 
 int /*<<< orphan*/  bna_rx_sm_start_stop_wait ; 
 int /*<<< orphan*/  bna_rx_sm_stopped ; 

__attribute__((used)) static void FUNC2(struct bna_rx *rx,
				enum bna_rx_event event)
{
	switch (event) {
	case RX_E_STOP:
		FUNC0(rx, bna_rx_sm_start_stop_wait);
		break;

	case RX_E_FAIL:
		FUNC0(rx, bna_rx_sm_stopped);
		break;

	case RX_E_STARTED:
		FUNC0(rx, bna_rx_sm_rxf_start_wait);
		break;

	default:
		FUNC1(event);
		break;
	}
}