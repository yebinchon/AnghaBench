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
struct bna_rxf {int dummy; } ;
typedef  enum bna_rxf_event { ____Placeholder_bna_rxf_event } bna_rxf_event ;

/* Variables and functions */
#define  RXF_E_FAIL 129 
#define  RXF_E_FW_RESP 128 
 int /*<<< orphan*/  FUNC0 (struct bna_rxf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bna_rxf*) ; 
 int /*<<< orphan*/  bna_rxf_sm_stopped ; 

__attribute__((used)) static void
FUNC3(struct bna_rxf *rxf, enum bna_rxf_event event)
{
	switch (event) {
	case RXF_E_FAIL:
	case RXF_E_FW_RESP:
		FUNC2(rxf);
		FUNC0(rxf, bna_rxf_sm_stopped);
		break;

	default:
		FUNC1(event);
	}
}