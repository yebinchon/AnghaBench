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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct octeon_device {int /*<<< orphan*/  pcie_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PCI_BAR1_MASK ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct octeon_device *oct, u64 core_addr,
				  u32 idx, int valid)
{
	u64 bar1;
	u64 reg_adr;

	if (!valid) {
		reg_adr = FUNC3(
			oct, FUNC0(oct->pcie_port, idx));
		FUNC2(bar1, reg_adr);
		FUNC4(oct, (FUNC1(bar1) & 0xFFFFFFFEULL),
			       FUNC0(oct->pcie_port, idx));
		reg_adr = FUNC3(
			oct, FUNC0(oct->pcie_port, idx));
		FUNC2(bar1, reg_adr);
		return;
	}

	/*  The PEM(0..3)_BAR1_INDEX(0..15)[ADDR_IDX]<23:4> stores
	 *  bits <41:22> of the Core Addr
	 */
	FUNC4(oct, (((core_addr >> 22) << 4) | PCI_BAR1_MASK),
		       FUNC0(oct->pcie_port, idx));

	FUNC2(bar1, FUNC3(
		   oct, FUNC0(oct->pcie_port, idx)));
}