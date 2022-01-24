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
struct xenbus_device {int const state; int /*<<< orphan*/  dev; } ;
struct netfront_info {struct net_device* netdev; } ;
struct net_device {int dummy; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;

/* Variables and functions */
#define  XenbusStateClosed 136 
#define  XenbusStateClosing 135 
#define  XenbusStateConnected 134 
#define  XenbusStateInitWait 133 
#define  XenbusStateInitialised 132 
#define  XenbusStateInitialising 131 
#define  XenbusStateReconfigured 130 
#define  XenbusStateReconfiguring 129 
#define  XenbusStateUnknown 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct netfront_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  module_wq ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct xenbus_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct xenbus_device *dev,
			    enum xenbus_state backend_state)
{
	struct netfront_info *np = FUNC1(&dev->dev);
	struct net_device *netdev = np->netdev;

	FUNC0(&dev->dev, "%s\n", FUNC5(backend_state));

	FUNC3(&module_wq);

	switch (backend_state) {
	case XenbusStateInitialising:
	case XenbusStateInitialised:
	case XenbusStateReconfiguring:
	case XenbusStateReconfigured:
	case XenbusStateUnknown:
		break;

	case XenbusStateInitWait:
		if (dev->state != XenbusStateInitialising)
			break;
		if (FUNC7(netdev) != 0)
			break;
		FUNC6(dev, XenbusStateConnected);
		break;

	case XenbusStateConnected:
		FUNC2(netdev);
		break;

	case XenbusStateClosed:
		if (dev->state == XenbusStateClosed)
			break;
		/* Fall through - Missed the backend's CLOSING state. */
	case XenbusStateClosing:
		FUNC4(dev);
		break;
	}
}