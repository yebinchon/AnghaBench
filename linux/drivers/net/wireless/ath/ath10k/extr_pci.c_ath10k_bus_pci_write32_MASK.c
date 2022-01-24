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
typedef  int /*<<< orphan*/  value ;
typedef  scalar_t__ u32 ;
struct ath10k_pci {scalar_t__ mem_len; scalar_t__ mem; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 struct ath10k_pci* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ath10k *ar, u32 offset, u32 value)
{
	struct ath10k_pci *ar_pci = FUNC0(ar);
	int ret;

	if (FUNC5(offset + sizeof(value) > ar_pci->mem_len)) {
		FUNC3(ar, "refusing to write mmio out of bounds at 0x%08x - 0x%08zx (max 0x%08zx)\n",
			    offset, offset + sizeof(value), ar_pci->mem_len);
		return;
	}

	ret = FUNC2(ar);
	if (ret) {
		FUNC3(ar, "failed to wake target for write32 of 0x%08x at 0x%08x: %d\n",
			    value, offset, ret);
		return;
	}

	FUNC4(value, ar_pci->mem + offset);
	FUNC1(ar);
}