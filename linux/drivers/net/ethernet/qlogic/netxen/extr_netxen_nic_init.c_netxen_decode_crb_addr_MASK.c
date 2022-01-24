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
typedef  int u32 ;

/* Variables and functions */
 int NETXEN_ADDR_ERROR ; 
 int NETXEN_MAX_CRB_XFORM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int* crb_addr_xform ; 

__attribute__((used)) static u32 FUNC1(u32 addr)
{
	int i;
	u32 base_addr, offset, pci_base;

	FUNC0();

	pci_base = NETXEN_ADDR_ERROR;
	base_addr = addr & 0xfff00000;
	offset = addr & 0x000fffff;

	for (i = 0; i < NETXEN_MAX_CRB_XFORM; i++) {
		if (crb_addr_xform[i] == base_addr) {
			pci_base = i << 20;
			break;
		}
	}
	if (pci_base == NETXEN_ADDR_ERROR)
		return pci_base;
	else
		return pci_base + offset;
}