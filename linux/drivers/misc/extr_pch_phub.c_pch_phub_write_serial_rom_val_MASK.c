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
struct pch_phub_reg {unsigned int pch_mac_start_address; } ;

/* Variables and functions */
 unsigned int* pch_phub_mac_offset ; 
 int FUNC0 (struct pch_phub_reg*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct pch_phub_reg *chip,
					 unsigned int offset_address, u8 data)
{
	int retval;
	unsigned int mem_addr;

	mem_addr = chip->pch_mac_start_address +
			pch_phub_mac_offset[offset_address];

	retval = FUNC0(chip, mem_addr, data);

	return retval;
}