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
typedef  scalar_t__ u32 ;
struct alx_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ ALX_MSIX_ENTRY_BASE ; 
 scalar_t__ PCI_MSIX_ENTRY_CTRL_MASKBIT ; 
 int PCI_MSIX_ENTRY_SIZE ; 
 scalar_t__ PCI_MSIX_ENTRY_VECTOR_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_hw*,scalar_t__,scalar_t__) ; 

void FUNC2(struct alx_hw *hw, int index, bool mask)
{
	u32 reg, val;

	reg = ALX_MSIX_ENTRY_BASE + index * PCI_MSIX_ENTRY_SIZE +
		PCI_MSIX_ENTRY_VECTOR_CTRL;

	val = mask ? PCI_MSIX_ENTRY_CTRL_MASKBIT : 0;

	FUNC1(hw, reg, val);
	FUNC0(hw);
}