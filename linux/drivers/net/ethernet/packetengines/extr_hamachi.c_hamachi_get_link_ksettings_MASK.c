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
struct hamachi_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  mii_if; } ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ethtool_link_ksettings*) ; 
 struct hamachi_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				      struct ethtool_link_ksettings *cmd)
{
	struct hamachi_private *np = FUNC1(dev);
	FUNC2(&np->lock);
	FUNC0(&np->mii_if, cmd);
	FUNC3(&np->lock);
	return 0;
}