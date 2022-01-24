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
typedef  size_t u8 ;
typedef  int u16 ;
struct brcms_hardware {int dummy; } ;

/* Variables and functions */
 size_t BRCMS_RATE_MASK ; 
 int M_RT_DIRMAP_A ; 
 int M_RT_DIRMAP_B ; 
 int FUNC0 (struct brcms_hardware*,int) ; 
 scalar_t__ FUNC1 (size_t) ; 
 size_t* rate_info ; 

u16 FUNC2(struct brcms_hardware *wlc_hw, u8 rate)
{
	u16 table_ptr;
	u8 phy_rate, index;

	/* get the phy specific rate encoding for the PLCP SIGNAL field */
	if (FUNC1(rate))
		table_ptr = M_RT_DIRMAP_A;
	else
		table_ptr = M_RT_DIRMAP_B;

	/* for a given rate, the LS-nibble of the PLCP SIGNAL field is
	 * the index into the rate table.
	 */
	phy_rate = rate_info[rate] & BRCMS_RATE_MASK;
	index = phy_rate & 0xf;

	/* Find the SHM pointer to the rate table entry by looking in the
	 * Direct-map Table
	 */
	return 2 * FUNC0(wlc_hw, table_ptr + (index * 2));
}