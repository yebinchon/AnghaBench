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
struct ethtool_wolinfo {int supported; int wolopts; int /*<<< orphan*/  sopass; } ;
struct bcm_sysport_priv {int wolopts; int /*<<< orphan*/  sopass; } ;

/* Variables and functions */
 int WAKE_FILTER ; 
 int WAKE_MAGIC ; 
 int WAKE_MAGICSECURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bcm_sysport_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
				struct ethtool_wolinfo *wol)
{
	struct bcm_sysport_priv *priv = FUNC1(dev);

	wol->supported = WAKE_MAGIC | WAKE_MAGICSECURE | WAKE_FILTER;
	wol->wolopts = priv->wolopts;

	if (!(priv->wolopts & WAKE_MAGICSECURE))
		return;

	FUNC0(wol->sopass, priv->sopass, sizeof(priv->sopass));
}