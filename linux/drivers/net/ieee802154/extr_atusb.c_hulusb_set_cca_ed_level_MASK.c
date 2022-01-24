#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct atusb {TYPE_3__* hw; } ;
struct TYPE_6__ {TYPE_2__* phy; } ;
struct TYPE_4__ {void** cca_ed_levels; void* cca_ed_levels_size; } ;
struct TYPE_5__ {void* cca_ed_level; TYPE_1__ supported; } ;

/* Variables and functions */
 void* FUNC0 (void**) ; 
 int /*<<< orphan*/  SR_CCA_ED_THRES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void** at86rf212_ed_levels_100 ; 
 void** at86rf212_ed_levels_98 ; 
 unsigned int FUNC2 (struct atusb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct atusb *lp, int rssi_base_val)
{
	unsigned int cca_ed_thres;

	cca_ed_thres = FUNC2(lp, SR_CCA_ED_THRES);

	switch (rssi_base_val) {
	case -98:
		lp->hw->phy->supported.cca_ed_levels = at86rf212_ed_levels_98;
		lp->hw->phy->supported.cca_ed_levels_size = FUNC0(at86rf212_ed_levels_98);
		lp->hw->phy->cca_ed_level = at86rf212_ed_levels_98[cca_ed_thres];
		break;
	case -100:
		lp->hw->phy->supported.cca_ed_levels = at86rf212_ed_levels_100;
		lp->hw->phy->supported.cca_ed_levels_size = FUNC0(at86rf212_ed_levels_100);
		lp->hw->phy->cca_ed_level = at86rf212_ed_levels_100[cca_ed_thres];
		break;
	default:
		FUNC1(1);
	}

	return 0;
}