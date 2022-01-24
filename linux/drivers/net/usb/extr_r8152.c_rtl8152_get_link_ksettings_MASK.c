#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mdio_read; } ;
struct r8152 {int /*<<< orphan*/  intf; int /*<<< orphan*/  control; TYPE_1__ mii; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct ethtool_link_ksettings*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC6(struct net_device *netdev,
			       struct ethtool_link_ksettings *cmd)
{
	struct r8152 *tp = FUNC3(netdev);
	int ret;

	if (!tp->mii.mdio_read)
		return -EOPNOTSUPP;

	ret = FUNC4(tp->intf);
	if (ret < 0)
		goto out;

	FUNC1(&tp->control);

	FUNC0(&tp->mii, cmd);

	FUNC2(&tp->control);

	FUNC5(tp->intf);

out:
	return ret;
}