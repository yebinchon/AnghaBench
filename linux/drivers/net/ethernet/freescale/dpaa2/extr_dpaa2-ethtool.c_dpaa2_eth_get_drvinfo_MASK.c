#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  driver; } ;
struct dpaa2_eth_priv {int dpni_ver_major; int dpni_ver_minor; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dpaa2_eth_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *net_dev,
				  struct ethtool_drvinfo *drvinfo)
{
	struct dpaa2_eth_priv *priv = FUNC1(net_dev);

	FUNC3(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));

	FUNC2(drvinfo->fw_version, sizeof(drvinfo->fw_version),
		 "%u.%u", priv->dpni_ver_major, priv->dpni_ver_minor);

	FUNC3(drvinfo->bus_info, FUNC0(net_dev->dev.parent->parent),
		sizeof(drvinfo->bus_info));
}