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
typedef  int u16 ;
struct sh_eth_private {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ETH_ALEN ; 
 int SH_ETH_TSU_CAM_ENTRIES ; 
 int /*<<< orphan*/  TSU_ADRH0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 struct sh_eth_private* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct sh_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev, const u8 *addr)
{
	struct sh_eth_private *mdp = FUNC1(ndev);
	u16 reg_offset = FUNC2(mdp, TSU_ADRH0);
	int i;
	u8 c_addr[ETH_ALEN];

	for (i = 0; i < SH_ETH_TSU_CAM_ENTRIES; i++, reg_offset += 8) {
		FUNC3(ndev, reg_offset, c_addr);
		if (FUNC0(addr, c_addr))
			return i;
	}

	return -ENOENT;
}