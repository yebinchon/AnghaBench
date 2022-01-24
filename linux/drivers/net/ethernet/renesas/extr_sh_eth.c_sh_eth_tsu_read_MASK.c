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
typedef  unsigned int u32 ;
typedef  scalar_t__ u16 ;
struct sh_eth_private {scalar_t__ tsu_addr; } ;

/* Variables and functions */
 scalar_t__ SH_ETH_OFFSET_INVALID ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct sh_eth_private*,int) ; 

__attribute__((used)) static u32 FUNC3(struct sh_eth_private *mdp, int enum_index)
{
	u16 offset = FUNC2(mdp, enum_index);

	if (FUNC0(offset == SH_ETH_OFFSET_INVALID))
		return ~0U;

	return FUNC1(mdp->tsu_addr + offset);
}