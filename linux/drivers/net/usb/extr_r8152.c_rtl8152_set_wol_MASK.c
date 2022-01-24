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
struct r8152 {int saved_wolopts; int /*<<< orphan*/  intf; int /*<<< orphan*/  control; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int WAKE_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct r8152 *tp = FUNC3(dev);
	int ret;

	if (!FUNC4(tp))
		return -EOPNOTSUPP;

	if (wol->wolopts & ~WAKE_ANY)
		return -EINVAL;

	ret = FUNC5(tp->intf);
	if (ret < 0)
		goto out_set_wol;

	FUNC1(&tp->control);

	FUNC0(tp, wol->wolopts);
	tp->saved_wolopts = wol->wolopts & WAKE_ANY;

	FUNC2(&tp->control);

	FUNC6(tp->intf);

out_set_wol:
	return ret;
}