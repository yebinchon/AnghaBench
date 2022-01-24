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
struct net_device {int dummy; } ;
struct jme_adapter {int /*<<< orphan*/  rxmcs_lock; int /*<<< orphan*/  reg_rxmcs; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int /*<<< orphan*/  JME_RXMCS ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  RXMCS_CHECKSUM ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jme_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct net_device *netdev, netdev_features_t features)
{
	struct jme_adapter *jme = FUNC1(netdev);

	FUNC2(&jme->rxmcs_lock);
	if (features & NETIF_F_RXCSUM)
		jme->reg_rxmcs |= RXMCS_CHECKSUM;
	else
		jme->reg_rxmcs &= ~RXMCS_CHECKSUM;
	FUNC0(jme, JME_RXMCS, jme->reg_rxmcs);
	FUNC3(&jme->rxmcs_lock);

	return 0;
}