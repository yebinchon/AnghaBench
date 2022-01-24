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
struct device {int dummy; } ;
typedef  int resource_size_t ;
struct TYPE_6__ {unsigned long base_addr; } ;
struct TYPE_4__ {int start; } ;
struct TYPE_5__ {TYPE_1__ resource; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 scalar_t__ DFX_MMIO ; 
 int PI_DEFEA_K_BURST_HOLDOFF ; 
 int PI_ESIC_K_BURST_HOLDOFF_LEN ; 
 int PI_ESIC_K_CSR_IO_LEN ; 
 int PI_ESIC_K_ESIC_CSR ; 
 int PI_ESIC_K_ESIC_CSR_LEN ; 
 scalar_t__ PI_ESIC_K_MEM_ADD_HI_CMP_0 ; 
 scalar_t__ PI_ESIC_K_MEM_ADD_HI_CMP_1 ; 
 scalar_t__ PI_ESIC_K_MEM_ADD_HI_CMP_2 ; 
 scalar_t__ PI_ESIC_K_MEM_ADD_LO_CMP_0 ; 
 scalar_t__ PI_ESIC_K_MEM_ADD_LO_CMP_1 ; 
 scalar_t__ PI_ESIC_K_MEM_ADD_LO_CMP_2 ; 
 int PI_MEM_ADD_MASK_M ; 
 int PI_TC_K_CSR_LEN ; 
 int PI_TC_K_CSR_OFFSET ; 
 int FUNC2 (struct device*) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 TYPE_2__* FUNC8 (struct device*) ; 

__attribute__((used)) static void FUNC9(struct device *bdev,
			 resource_size_t *bar_start, resource_size_t *bar_len)
{
	int dfx_bus_pci = FUNC2(bdev);
	int dfx_bus_eisa = FUNC0(bdev);
	int dfx_bus_tc = FUNC1(bdev);
	int dfx_use_mmio = DFX_MMIO || dfx_bus_tc;

	if (dfx_bus_pci) {
		int num = dfx_use_mmio ? 0 : 1;

		bar_start[0] = FUNC5(FUNC7(bdev), num);
		bar_len[0] = FUNC4(FUNC7(bdev), num);
		bar_start[2] = bar_start[1] = 0;
		bar_len[2] = bar_len[1] = 0;
	}
	if (dfx_bus_eisa) {
		unsigned long base_addr = FUNC6(bdev)->base_addr;
		resource_size_t bar_lo;
		resource_size_t bar_hi;

		if (dfx_use_mmio) {
			bar_lo = FUNC3(base_addr + PI_ESIC_K_MEM_ADD_LO_CMP_2);
			bar_lo <<= 8;
			bar_lo |= FUNC3(base_addr + PI_ESIC_K_MEM_ADD_LO_CMP_1);
			bar_lo <<= 8;
			bar_lo |= FUNC3(base_addr + PI_ESIC_K_MEM_ADD_LO_CMP_0);
			bar_lo <<= 8;
			bar_start[0] = bar_lo;
			bar_hi = FUNC3(base_addr + PI_ESIC_K_MEM_ADD_HI_CMP_2);
			bar_hi <<= 8;
			bar_hi |= FUNC3(base_addr + PI_ESIC_K_MEM_ADD_HI_CMP_1);
			bar_hi <<= 8;
			bar_hi |= FUNC3(base_addr + PI_ESIC_K_MEM_ADD_HI_CMP_0);
			bar_hi <<= 8;
			bar_len[0] = ((bar_hi - bar_lo) | PI_MEM_ADD_MASK_M) +
				     1;
		} else {
			bar_start[0] = base_addr;
			bar_len[0] = PI_ESIC_K_CSR_IO_LEN;
		}
		bar_start[1] = base_addr + PI_DEFEA_K_BURST_HOLDOFF;
		bar_len[1] = PI_ESIC_K_BURST_HOLDOFF_LEN;
		bar_start[2] = base_addr + PI_ESIC_K_ESIC_CSR;
		bar_len[2] = PI_ESIC_K_ESIC_CSR_LEN;
	}
	if (dfx_bus_tc) {
		bar_start[0] = FUNC8(bdev)->resource.start +
			       PI_TC_K_CSR_OFFSET;
		bar_len[0] = PI_TC_K_CSR_LEN;
		bar_start[2] = bar_start[1] = 0;
		bar_len[2] = bar_len[1] = 0;
	}
}