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
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned long NETDEV_UNREGISTER ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_app*,struct net_device*) ; 
 scalar_t__ FUNC1 (struct nfp_app*,struct net_device*) ; 

__attribute__((used)) static int
FUNC2(struct nfp_app *app,
				       struct net_device *netdev,
				       unsigned long event)
{
	if (event == NETDEV_UNREGISTER &&
	    FUNC1(app, netdev))
		FUNC0(app, netdev);

	return NOTIFY_OK;
}