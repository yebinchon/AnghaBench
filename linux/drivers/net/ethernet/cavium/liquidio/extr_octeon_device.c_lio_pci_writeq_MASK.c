#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  pci_win_wr_data_lo; int /*<<< orphan*/  pci_win_wr_data_hi; int /*<<< orphan*/  pci_win_wr_addr; } ;
struct octeon_device {int /*<<< orphan*/  pci_win_lock; TYPE_1__ reg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(struct octeon_device *oct,
		    u64 val,
		    u64 addr)
{
	u32 val32;
	unsigned long flags;

	FUNC1(&oct->pci_win_lock, flags);

	FUNC4(addr, oct->reg_list.pci_win_wr_addr);

	/* The write happens when the LSB is written. So write MSB first. */
	FUNC3(val >> 32, oct->reg_list.pci_win_wr_data_hi);
	/* Read the MSB to ensure ordering of writes. */
	val32 = FUNC0(oct->reg_list.pci_win_wr_data_hi);

	FUNC3(val & 0xffffffff, oct->reg_list.pci_win_wr_data_lo);

	FUNC2(&oct->pci_win_lock, flags);
}