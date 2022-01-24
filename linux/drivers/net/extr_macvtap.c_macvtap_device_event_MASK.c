#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct net_device {int ifindex; TYPE_4__ dev; int /*<<< orphan*/ * rtnl_link_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  minor; } ;
struct macvtap_dev {TYPE_1__ tap; } ;
struct device {int /*<<< orphan*/  kobj; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  NETDEV_CHANGE_TX_QUEUE_LEN 130 
#define  NETDEV_REGISTER 129 
#define  NETDEV_UNREGISTER 128 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
 int FUNC3 (struct device*) ; 
 struct device* FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  macvtap_class ; 
 int /*<<< orphan*/  macvtap_link_ops ; 
 int /*<<< orphan*/  macvtap_major ; 
 struct net_device* FUNC6 (void*) ; 
 struct macvtap_dev* FUNC7 (struct net_device*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC15(struct notifier_block *unused,
				unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC6(ptr);
	struct macvtap_dev *vlantap;
	struct device *classdev;
	dev_t devt;
	int err;
	char tap_name[IFNAMSIZ];

	if (dev->rtnl_link_ops != &macvtap_link_ops)
		return NOTIFY_DONE;

	FUNC9(tap_name, IFNAMSIZ, "tap%d", dev->ifindex);
	vlantap = FUNC7(dev);

	switch (event) {
	case NETDEV_REGISTER:
		/* Create the device node here after the network device has
		 * been registered but before register_netdevice has
		 * finished running.
		 */
		err = FUNC13(macvtap_major, &vlantap->tap);
		if (err)
			return FUNC8(err);

		devt = FUNC2(FUNC1(macvtap_major), vlantap->tap.minor);
		classdev = FUNC4(&macvtap_class, &dev->dev, devt,
					 dev, tap_name);
		if (FUNC0(classdev)) {
			FUNC12(macvtap_major, &vlantap->tap);
			return FUNC8(FUNC3(classdev));
		}
		err = FUNC10(&dev->dev.kobj, &classdev->kobj,
					tap_name);
		if (err)
			return FUNC8(err);
		break;
	case NETDEV_UNREGISTER:
		/* vlan->minor == 0 if NETDEV_REGISTER above failed */
		if (vlantap->tap.minor == 0)
			break;
		FUNC11(&dev->dev.kobj, tap_name);
		devt = FUNC2(FUNC1(macvtap_major), vlantap->tap.minor);
		FUNC5(&macvtap_class, devt);
		FUNC12(macvtap_major, &vlantap->tap);
		break;
	case NETDEV_CHANGE_TX_QUEUE_LEN:
		if (FUNC14(&vlantap->tap))
			return NOTIFY_BAD;
		break;
	}

	return NOTIFY_DONE;
}