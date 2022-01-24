#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * state; TYPE_1__* proto; } ;
typedef  TYPE_2__ hdlc_device ;
struct TYPE_4__ {int /*<<< orphan*/  module; int /*<<< orphan*/  (* detach ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_PRE_TYPE_CHANGE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 TYPE_2__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

int FUNC8(struct net_device *dev)
{
	hdlc_device *hdlc = FUNC1(dev);
	int err;

	if (hdlc->proto) {
		err = FUNC0(NETDEV_PRE_TYPE_CHANGE, dev);
		err = FUNC6(err);
		if (err) {
			FUNC5(dev, "Refused to change device type\n");
			return err;
		}

		if (hdlc->proto->detach)
			hdlc->proto->detach(dev);
		FUNC4(hdlc->proto->module);
		hdlc->proto = NULL;
	}
	FUNC3(hdlc->state);
	hdlc->state = NULL;
	FUNC2(dev);

	return 0;
}