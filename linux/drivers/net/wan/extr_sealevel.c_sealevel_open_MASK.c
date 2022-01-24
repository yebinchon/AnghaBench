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
struct slvl_device {int channel; TYPE_1__* chan; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_function; } ;

/* Variables and functions */
 struct slvl_device* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  sealevel_input ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,TYPE_1__*) ; 
 int FUNC5 (struct net_device*,TYPE_1__*) ; 
 int FUNC6 (struct net_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct net_device *d)
{
	struct slvl_device *slvl = FUNC0(d);
	int err = -1;
	int unit = slvl->channel;

	/*
	 *	Link layer up.
	 */

	switch (unit) {
		case 0:
			err = FUNC5(d, slvl->chan);
			break;
		case 1:
			err = FUNC6(d, slvl->chan);
			break;
	}

	if (err)
		return err;

	err = FUNC1(d);
	if (err) {
		switch (unit) {
			case 0:
				FUNC4(d, slvl->chan);
				break;
			case 1:
				FUNC3(d, slvl->chan);
				break;
		}
		return err;
	}

	slvl->chan->rx_function = sealevel_input;

	/*
	 *	Go go go
	 */
	FUNC2(d);
	return 0;
}