#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int start; scalar_t__ size; } ;
struct TYPE_4__ {TYPE_1__ ocq; } ;
struct adapter {TYPE_2__ vres; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  PCIE_MEM_ACCESS_BASE_WIN_A ; 
 int /*<<< orphan*/  PCIE_MEM_ACCESS_OFFSET_A ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_2 ; 
 int PCI_BASE_ADDRESS_MEM_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct adapter *adap)
{
	if (adap->vres.ocq.size) {
		u32 start;
		unsigned int sz_kb;

		start = FUNC6(adap, PCI_BASE_ADDRESS_2);
		start &= PCI_BASE_ADDRESS_MEM_MASK;
		start += FUNC1(adap->pdev, &adap->vres);
		sz_kb = FUNC5(adap->vres.ocq.size) >> 10;
		FUNC8(adap,
			     FUNC2(PCIE_MEM_ACCESS_BASE_WIN_A, 3),
			     start | FUNC0(1) | FUNC3(FUNC4(sz_kb)));
		FUNC8(adap,
			     FUNC2(PCIE_MEM_ACCESS_OFFSET_A, 3),
			     adap->vres.ocq.start);
		FUNC7(adap,
			    FUNC2(PCIE_MEM_ACCESS_OFFSET_A, 3));
	}
}