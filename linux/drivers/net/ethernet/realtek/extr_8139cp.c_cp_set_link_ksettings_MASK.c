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
struct ethtool_link_ksettings {int dummy; } ;
struct cp_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  mii_if; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct ethtool_link_ksettings const*) ; 
 struct cp_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				 const struct ethtool_link_ksettings *cmd)
{
	struct cp_private *cp = FUNC1(dev);
	int rc;
	unsigned long flags;

	FUNC2(&cp->lock, flags);
	rc = FUNC0(&cp->mii_if, cmd);
	FUNC3(&cp->lock, flags);

	return rc;
}