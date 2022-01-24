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
struct gve_priv {int /*<<< orphan*/  pdev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 char* gve_version_str ; 
 struct gve_priv* FUNC0 (struct net_device*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
			    struct ethtool_drvinfo *info)
{
	struct gve_priv *priv = FUNC0(netdev);

	FUNC2(info->driver, "gve", sizeof(info->driver));
	FUNC2(info->version, gve_version_str, sizeof(info->version));
	FUNC2(info->bus_info, FUNC1(priv->pdev), sizeof(info->bus_info));
}