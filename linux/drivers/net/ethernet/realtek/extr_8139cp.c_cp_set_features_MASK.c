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
struct net_device {int features; } ;
struct cp_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  cpcmd; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int /*<<< orphan*/  CpCmd ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  RxChkSum ; 
 int /*<<< orphan*/  RxVlanOn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cp_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, netdev_features_t features)
{
	struct cp_private *cp = FUNC1(dev);
	unsigned long flags;

	if (!((dev->features ^ features) & NETIF_F_RXCSUM))
		return 0;

	FUNC2(&cp->lock, flags);

	if (features & NETIF_F_RXCSUM)
		cp->cpcmd |= RxChkSum;
	else
		cp->cpcmd &= ~RxChkSum;

	if (features & NETIF_F_HW_VLAN_CTAG_RX)
		cp->cpcmd |= RxVlanOn;
	else
		cp->cpcmd &= ~RxVlanOn;

	FUNC0(CpCmd, cp->cpcmd);
	FUNC3(&cp->lock, flags);

	return 0;
}