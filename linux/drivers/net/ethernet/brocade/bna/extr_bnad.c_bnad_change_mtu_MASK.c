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
typedef  int u32 ;
struct net_device {int mtu; } ;
struct bnad {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bnad*) ; 
 int EBUSY ; 
 int FUNC2 (struct bnad*,int) ; 
 int FUNC3 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct net_device *netdev, int new_mtu)
{
	int err, mtu;
	struct bnad *bnad = FUNC6(netdev);
	u32 rx_count = 0, frame, new_frame;

	FUNC4(&bnad->conf_mutex);

	mtu = netdev->mtu;
	netdev->mtu = new_mtu;

	frame = FUNC0(mtu);
	new_frame = FUNC0(new_mtu);

	/* check if multi-buffer needs to be enabled */
	if (FUNC1(bnad) &&
	    FUNC7(bnad->netdev)) {
		/* only when transition is over 4K */
		if ((frame <= 4096 && new_frame > 4096) ||
		    (frame > 4096 && new_frame <= 4096))
			rx_count = FUNC3(bnad);
	}

	/* rx_count > 0 - new rx created
	 *	- Linux set err = 0 and return
	 */
	err = FUNC2(bnad, new_frame);
	if (err)
		err = -EBUSY;

	FUNC5(&bnad->conf_mutex);
	return err;
}