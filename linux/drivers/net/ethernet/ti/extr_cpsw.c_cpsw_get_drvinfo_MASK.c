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
struct platform_device {char* name; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct cpsw_common {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct cpsw_common* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct platform_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev,
			     struct ethtool_drvinfo *info)
{
	struct cpsw_common *cpsw = FUNC0(ndev);
	struct platform_device	*pdev = FUNC2(cpsw->dev);

	FUNC1(info->driver, "cpsw", sizeof(info->driver));
	FUNC1(info->version, "1.0", sizeof(info->version));
	FUNC1(info->bus_info, pdev->name, sizeof(info->bus_info));
}