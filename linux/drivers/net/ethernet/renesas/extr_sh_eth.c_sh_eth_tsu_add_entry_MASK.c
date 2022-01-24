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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sh_eth_private {TYPE_1__* cd; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tsu; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  TSU_ADRH0 ; 
 int /*<<< orphan*/  TSU_TEN ; 
 struct sh_eth_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (struct sh_eth_private*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sh_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sh_eth_private*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net_device*,scalar_t__,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC8(struct net_device *ndev, const u8 *addr)
{
	struct sh_eth_private *mdp = FUNC0(ndev);
	u16 reg_offset = FUNC4(mdp, TSU_ADRH0);
	int i, ret;

	if (!mdp->cd->tsu)
		return 0;

	i = FUNC3(ndev, addr);
	if (i < 0) {
		/* No entry found, create one */
		i = FUNC2(ndev);
		if (i < 0)
			return -ENOMEM;
		ret = FUNC7(ndev, reg_offset + i * 8, addr);
		if (ret < 0)
			return ret;

		/* Enable the entry */
		FUNC6(mdp, FUNC5(mdp, TSU_TEN) |
				 (1 << (31 - i)), TSU_TEN);
	}

	/* Entry found or created, enable POST */
	FUNC1(ndev, i);

	return 0;
}