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
struct net_device {int /*<<< orphan*/  dev; } ;
struct mvneta_port {int /*<<< orphan*/  phylink; } ;
struct ethtool_wolinfo {int /*<<< orphan*/  wolopts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct mvneta_port* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ethtool_wolinfo*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
				  struct ethtool_wolinfo *wol)
{
	struct mvneta_port *pp = FUNC1(dev);
	int ret;

	ret = FUNC2(pp->phylink, wol);
	if (!ret)
		FUNC0(&dev->dev, !!wol->wolopts);

	return ret;
}