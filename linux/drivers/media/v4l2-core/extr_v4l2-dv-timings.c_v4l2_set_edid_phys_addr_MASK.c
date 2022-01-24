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
typedef  int u8 ;
typedef  int u16 ;

/* Variables and functions */
 unsigned int FUNC0 (int*,unsigned int) ; 

void FUNC1(u8 *edid, unsigned int size, u16 phys_addr)
{
	unsigned int loc = FUNC0(edid, size);
	u8 sum = 0;
	unsigned int i;

	if (loc == 0)
		return;
	edid[loc] = phys_addr >> 8;
	edid[loc + 1] = phys_addr & 0xff;
	loc &= ~0x7f;

	/* update the checksum */
	for (i = loc; i < loc + 127; i++)
		sum += edid[i];
	edid[i] = 256 - sum;
}