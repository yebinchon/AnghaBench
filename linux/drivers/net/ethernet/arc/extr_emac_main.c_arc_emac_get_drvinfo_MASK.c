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
struct ethtool_drvinfo {int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct arc_emac_priv {int /*<<< orphan*/  drv_version; int /*<<< orphan*/  drv_name; } ;

/* Variables and functions */
 struct arc_emac_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev,
				 struct ethtool_drvinfo *info)
{
	struct arc_emac_priv *priv = FUNC0(ndev);

	FUNC1(info->driver, priv->drv_name, sizeof(info->driver));
	FUNC1(info->version, priv->drv_version, sizeof(info->version));
}