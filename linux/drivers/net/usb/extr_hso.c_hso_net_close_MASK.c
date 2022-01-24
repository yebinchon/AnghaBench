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
struct hso_net {int /*<<< orphan*/  parent; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSO_NET_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hso_net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *net)
{
	struct hso_net *odev = FUNC2(net);

	/* we don't need the queue anymore */
	FUNC3(net);
	/* no longer running */
	FUNC0(HSO_NET_RUNNING, &odev->flags);

	FUNC1(odev->parent);

	/* done */
	return 0;
}