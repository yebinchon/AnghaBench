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
struct nfp_app {int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; } ;

/* Variables and functions */
 struct nfp_app* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_app*,int /*<<< orphan*/ ,char*,struct ethtool_drvinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
{
	struct nfp_app *app = FUNC0(netdev);

	FUNC3(drvinfo->bus_info, FUNC2(app->pdev),
		sizeof(drvinfo->bus_info));
	FUNC1(app, app->pdev, "*", drvinfo);
}