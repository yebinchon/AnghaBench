#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct channel_data {int usage; TYPE_1__* cosa; int /*<<< orphan*/  rx_done; int /*<<< orphan*/  tx_done; int /*<<< orphan*/  setup_rx; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int firmware_status; int /*<<< orphan*/  lock; int /*<<< orphan*/  usage; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int COSA_FW_START ; 
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct channel_data*) ; 
 int /*<<< orphan*/  cosa_net_rx_done ; 
 int /*<<< orphan*/  cosa_net_setup_rx ; 
 int /*<<< orphan*/  cosa_net_tx_done ; 
 struct channel_data* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct channel_data *chan = FUNC1(dev);
	int err;
	unsigned long flags;

	if (!(chan->cosa->firmware_status & COSA_FW_START)) {
		FUNC4("%s: start the firmware first (status %d)\n",
			  chan->cosa->name, chan->cosa->firmware_status);
		return -EPERM;
	}
	FUNC6(&chan->cosa->lock, flags);
	if (chan->usage != 0) {
		FUNC5("%s: cosa_net_open called with usage count %d\n",
			chan->name, chan->usage);
		FUNC7(&chan->cosa->lock, flags);
		return -EBUSY;
	}
	chan->setup_rx = cosa_net_setup_rx;
	chan->tx_done = cosa_net_tx_done;
	chan->rx_done = cosa_net_rx_done;
	chan->usage = -1;
	chan->cosa->usage++;
	FUNC7(&chan->cosa->lock, flags);

	err = FUNC2(dev);
	if (err) {
		FUNC6(&chan->cosa->lock, flags);
		chan->usage = 0;
		chan->cosa->usage--;
		FUNC7(&chan->cosa->lock, flags);
		return err;
	}

	FUNC3(dev);
	FUNC0(chan);
	return 0;
}