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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct sh_eth_private {scalar_t__* reg_offset; scalar_t__ addr; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SH_ETH_OFFSET_INVALID ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct sh_eth_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev, u32 data, int enum_index)
{
	struct sh_eth_private *mdp = FUNC2(ndev);
	u16 offset = mdp->reg_offset[enum_index];

	if (FUNC0(offset == SH_ETH_OFFSET_INVALID))
		return;

	FUNC1(data, mdp->addr + offset);
}