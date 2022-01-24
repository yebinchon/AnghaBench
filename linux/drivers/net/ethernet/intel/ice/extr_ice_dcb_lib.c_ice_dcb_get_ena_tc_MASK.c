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
typedef  scalar_t__ u8 ;
struct ice_dcbx_cfg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct ice_dcbx_cfg*) ; 

u8 FUNC2(struct ice_dcbx_cfg *dcbcfg)
{
	u8 i, num_tc, ena_tc = 1;

	num_tc = FUNC1(dcbcfg);

	for (i = 0; i < num_tc; i++)
		ena_tc |= FUNC0(i);

	return ena_tc;
}