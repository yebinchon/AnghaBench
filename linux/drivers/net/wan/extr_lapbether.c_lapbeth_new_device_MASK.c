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
struct lapbethdev {int /*<<< orphan*/  node; struct net_device* ethdev; struct net_device* axdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 struct net_device* FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  lapbeth_devices ; 
 int /*<<< orphan*/  lapbeth_setup ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct lapbethdev* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct net_device *ndev;
	struct lapbethdev *lapbeth;
	int rc = -ENOMEM;

	FUNC0();

	ndev = FUNC1(sizeof(*lapbeth), "lapb%d", NET_NAME_UNKNOWN,
			    lapbeth_setup);
	if (!ndev)
		goto out;

	lapbeth = FUNC6(ndev);
	lapbeth->axdev = ndev;

	FUNC2(dev);
	lapbeth->ethdev = dev;

	rc = -EIO;
	if (FUNC7(ndev))
		goto fail;

	FUNC5(&lapbeth->node, &lapbeth_devices);
	rc = 0;
out:
	return rc;
fail:
	FUNC3(dev);
	FUNC4(ndev);
	goto out;
}