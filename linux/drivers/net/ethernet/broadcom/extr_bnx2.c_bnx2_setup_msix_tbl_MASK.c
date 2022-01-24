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
struct bnx2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_MSIX_PBA_ADDR ; 
 int /*<<< orphan*/  BNX2_MSIX_TABLE_ADDR ; 
 int /*<<< orphan*/  BNX2_PCI_GRC_WINDOW2_ADDR ; 
 int /*<<< orphan*/  BNX2_PCI_GRC_WINDOW3_ADDR ; 
 int /*<<< orphan*/  BNX2_PCI_GRC_WINDOW_ADDR ; 
 int /*<<< orphan*/  BNX2_PCI_GRC_WINDOW_ADDR_SEP_WIN ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct bnx2 *bp)
{
	FUNC0(bp, BNX2_PCI_GRC_WINDOW_ADDR, BNX2_PCI_GRC_WINDOW_ADDR_SEP_WIN);

	FUNC0(bp, BNX2_PCI_GRC_WINDOW2_ADDR, BNX2_MSIX_TABLE_ADDR);
	FUNC0(bp, BNX2_PCI_GRC_WINDOW3_ADDR, BNX2_MSIX_PBA_ADDR);
}