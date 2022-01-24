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
typedef  int /*<<< orphan*/  u16 ;
struct sh_eth_private {int /*<<< orphan*/  vlan_num_ids; TYPE_1__* cd; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  tsu; } ;

/* Variables and functions */
 int EPERM ; 
 struct sh_eth_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct sh_eth_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_eth_private*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev,
				   __be16 proto, u16 vid)
{
	struct sh_eth_private *mdp = FUNC0(ndev);
	int vtag_reg_index = FUNC1(mdp);

	if (FUNC3(!mdp->cd->tsu))
		return -EPERM;

	/* No filtering if vid = 0 */
	if (!vid)
		return 0;

	mdp->vlan_num_ids--;
	FUNC2(mdp, 0, vtag_reg_index);

	return 0;
}