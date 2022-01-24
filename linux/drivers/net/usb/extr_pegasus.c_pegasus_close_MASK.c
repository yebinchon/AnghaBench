#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  rx_tl; } ;
typedef  TYPE_1__ pegasus_t ;

/* Variables and functions */
 int PEGASUS_UNPLUG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct net_device *net)
{
	pegasus_t *pegasus = FUNC1(net);

	FUNC2(net);
	if (!(pegasus->flags & PEGASUS_UNPLUG))
		FUNC0(pegasus);
	FUNC3(&pegasus->rx_tl);
	FUNC4(pegasus);

	return 0;
}