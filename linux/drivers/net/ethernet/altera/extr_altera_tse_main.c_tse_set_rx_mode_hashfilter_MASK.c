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
struct net_device {int flags; } ;
struct altera_tse_private {int /*<<< orphan*/  mac_cfg_lock; int /*<<< orphan*/  mac_dev; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MAC_CMDCFG_PROMIS_EN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  command_config ; 
 struct altera_tse_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct altera_tse_private *priv = FUNC2(dev);

	FUNC3(&priv->mac_cfg_lock);

	if (dev->flags & IFF_PROMISC)
		FUNC6(priv->mac_dev, FUNC5(command_config),
			    MAC_CMDCFG_PROMIS_EN);

	if (dev->flags & IFF_ALLMULTI)
		FUNC1(dev);
	else
		FUNC0(dev);

	FUNC4(&priv->mac_cfg_lock);
}