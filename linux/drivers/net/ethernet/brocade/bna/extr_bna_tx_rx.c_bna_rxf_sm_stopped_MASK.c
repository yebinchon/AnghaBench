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
#define  RXF_E_CONFIG 131 
#define  RXF_E_FAIL 130 
#define  RXF_E_START 129 
#define  RXF_E_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bna_rxf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  bna_rxf_sm_cfg_wait ; 
 int /*<<< orphan*/  FUNC2 (struct bna_rxf*) ; 
 int /*<<< orphan*/  FUNC3 (struct bna_rxf*) ; 

__attribute__((used)) static void
FUNC4(struct bna_rxf *rxf, enum bna_rxf_event event)
{
	switch (event) {
	case RXF_E_START:
		FUNC0(rxf, bna_rxf_sm_cfg_wait);
		break;

	case RXF_E_STOP:
		FUNC3(rxf);
		break;

	case RXF_E_FAIL:
		/* No-op */
		break;

	case RXF_E_CONFIG:
		FUNC2(rxf);
		break;

	default:
		FUNC1(event);
	}
}