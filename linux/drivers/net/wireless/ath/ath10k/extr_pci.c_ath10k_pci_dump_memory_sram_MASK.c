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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct ath10k_pci {scalar_t__ mem; } ;
struct ath10k_mem_region {scalar_t__ start; scalar_t__ len; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 scalar_t__ QCA99X0_CPU_MEM_ADDR_REG ; 
 scalar_t__ QCA99X0_CPU_MEM_DATA_REG ; 
 scalar_t__ QCA99X0_PCIE_BAR0_START_REG ; 
 struct ath10k_pci* FUNC0 (struct ath10k*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar,
				       const struct ath10k_mem_region *region,
				       u8 *buf)
{
	struct ath10k_pci *ar_pci = FUNC0(ar);
	u32 base_addr, i;

	base_addr = FUNC1(ar_pci->mem + QCA99X0_PCIE_BAR0_START_REG);
	base_addr += region->start;

	for (i = 0; i < region->len; i += 4) {
		FUNC2(base_addr + i, ar_pci->mem + QCA99X0_CPU_MEM_ADDR_REG);
		*(u32 *)(buf + i) = FUNC1(ar_pci->mem + QCA99X0_CPU_MEM_DATA_REG);
	}

	return region->len;
}