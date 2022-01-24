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
struct TYPE_2__ {int (* eee_set ) (struct r8152*,struct ethtool_eee*) ;} ;
struct r8152 {int /*<<< orphan*/  intf; int /*<<< orphan*/  control; int /*<<< orphan*/  mii; TYPE_1__ rtl_ops; } ;
struct net_device {int dummy; } ;
struct ethtool_eee {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct r8152*,struct ethtool_eee*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct net_device *net, struct ethtool_eee *edata)
{
	struct r8152 *tp = FUNC3(net);
	int ret;

	ret = FUNC5(tp->intf);
	if (ret < 0)
		goto out;

	FUNC1(&tp->control);

	ret = tp->rtl_ops.eee_set(tp, edata);
	if (!ret)
		ret = FUNC0(&tp->mii);

	FUNC2(&tp->control);

	FUNC6(tp->intf);

out:
	return ret;
}