#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_8__ {scalar_t__ phy_type; } ;
struct brcms_phy {scalar_t__ phy_wreg; scalar_t__ phy_wreg_limit; TYPE_4__* d11core; TYPE_2__ pubpi; TYPE_1__* sh; } ;
struct TYPE_10__ {TYPE_3__* bus; } ;
struct TYPE_9__ {scalar_t__ hosttype; } ;
struct TYPE_7__ {int /*<<< orphan*/  corerev; } ;

/* Variables and functions */
 scalar_t__ BCMA_HOSTTYPE_PCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PHY_TYPE_SSN ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  phy4waddr ; 
 int /*<<< orphan*/  phy4wdatalo ; 
 int /*<<< orphan*/  radioregaddr ; 
 int /*<<< orphan*/  radioregdata ; 

void FUNC6(struct brcms_phy *pi, u16 addr, u16 val)
{
	if ((FUNC1(pi->sh->corerev, 24)) ||
	    (FUNC2(pi->sh->corerev, 22)
	     && (pi->pubpi.phy_type != PHY_TYPE_SSN))) {

		FUNC4(pi->d11core, FUNC0(radioregaddr), addr);
		FUNC5(pi->d11core, FUNC0(radioregdata), val);
	} else {
		FUNC4(pi->d11core, FUNC0(phy4waddr), addr);
		FUNC5(pi->d11core, FUNC0(phy4wdatalo), val);
	}

	if ((pi->d11core->bus->hosttype == BCMA_HOSTTYPE_PCI) &&
	    (++pi->phy_wreg >= pi->phy_wreg_limit)) {
		(void)FUNC3(pi->d11core, FUNC0(maccontrol));
		pi->phy_wreg = 0;
	}
}