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
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned long NETDEV_REGISTER ; 
 unsigned long NETDEV_UNREGISTER ; 
 int NOTIFY_OK ; 
 int FUNC0 (struct net_device*,struct nfp_app*,int /*<<< orphan*/ ,struct nfp_app*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,struct nfp_app*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_app*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfp_flower_indr_setup_tc_cb ; 

int FUNC4(struct nfp_app *app,
				       struct net_device *netdev,
				       unsigned long event)
{
	int err;

	if (!FUNC2(netdev))
		return NOTIFY_OK;

	if (event == NETDEV_REGISTER) {
		err = FUNC0(netdev, app,
						    nfp_flower_indr_setup_tc_cb,
						    app);
		if (err)
			FUNC3(app,
					     "Indirect block reg failed - %s\n",
					     netdev->name);
	} else if (event == NETDEV_UNREGISTER) {
		FUNC1(netdev,
						nfp_flower_indr_setup_tc_cb,
						app);
	}

	return NOTIFY_OK;
}