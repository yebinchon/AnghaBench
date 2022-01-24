#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct switchdev_notifier_fdb_info {int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {void* addr; } ;
struct rocker_switchdev_event_work {unsigned long event; int /*<<< orphan*/  work; TYPE_2__ fdb_info; struct rocker_port* rocker_port; } ;
struct rocker_port {TYPE_1__* rocker; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rocker_owq; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
#define  SWITCHDEV_FDB_ADD_TO_DEVICE 129 
#define  SWITCHDEV_FDB_DEL_TO_DEVICE 128 
 unsigned long SWITCHDEV_PORT_ATTR_SET ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rocker_switchdev_event_work*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,void*,int) ; 
 struct rocker_port* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  rocker_switchdev_event_work ; 
 int FUNC10 (struct net_device*,void*) ; 
 struct net_device* FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct notifier_block *unused,
				  unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC11(ptr);
	struct rocker_switchdev_event_work *switchdev_work;
	struct switchdev_notifier_fdb_info *fdb_info = ptr;
	struct rocker_port *rocker_port;

	if (!FUNC9(dev))
		return NOTIFY_DONE;

	if (event == SWITCHDEV_PORT_ATTR_SET)
		return FUNC10(dev, ptr);

	rocker_port = FUNC7(dev);
	switchdev_work = FUNC5(sizeof(*switchdev_work), GFP_ATOMIC);
	if (FUNC1(!switchdev_work))
		return NOTIFY_BAD;

	FUNC0(&switchdev_work->work, rocker_switchdev_event_work);
	switchdev_work->rocker_port = rocker_port;
	switchdev_work->event = event;

	switch (event) {
	case SWITCHDEV_FDB_ADD_TO_DEVICE: /* fall through */
	case SWITCHDEV_FDB_DEL_TO_DEVICE:
		FUNC6(&switchdev_work->fdb_info, ptr,
		       sizeof(switchdev_work->fdb_info));
		switchdev_work->fdb_info.addr = FUNC5(ETH_ALEN, GFP_ATOMIC);
		if (FUNC12(!switchdev_work->fdb_info.addr)) {
			FUNC4(switchdev_work);
			return NOTIFY_BAD;
		}

		FUNC3((u8 *)switchdev_work->fdb_info.addr,
				fdb_info->addr);
		/* Take a reference on the rocker device */
		FUNC2(dev);
		break;
	default:
		FUNC4(switchdev_work);
		return NOTIFY_DONE;
	}

	FUNC8(rocker_port->rocker->rocker_owq,
		   &switchdev_work->work);
	return NOTIFY_DONE;
}