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
typedef  size_t u32 ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;
struct TYPE_3__ {int /*<<< orphan*/  enet; } ;
struct bnad {size_t num_rx; int /*<<< orphan*/  bna_lock; TYPE_2__* rx_info; struct net_device* netdev; TYPE_1__ bna; } ;
struct TYPE_4__ {scalar_t__ rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bnad*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 size_t FUNC7 (struct bnad*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32
FUNC11(struct bnad *bnad)
{
	struct net_device *netdev = bnad->netdev;
	u32 err = 0, current_err = 0;
	u32 rx_id = 0, count = 0;
	unsigned long flags;

	/* destroy and create new rx objects */
	for (rx_id = 0; rx_id < bnad->num_rx; rx_id++) {
		if (!bnad->rx_info[rx_id].rx)
			continue;
		FUNC2(bnad, rx_id);
	}

	FUNC9(&bnad->bna_lock, flags);
	FUNC1(&bnad->bna.enet,
			 FUNC0(bnad->netdev->mtu), NULL);
	FUNC10(&bnad->bna_lock, flags);

	for (rx_id = 0; rx_id < bnad->num_rx; rx_id++) {
		count++;
		current_err = FUNC7(bnad, rx_id);
		if (current_err && !err) {
			err = current_err;
			FUNC8(netdev, "RXQ:%u setup failed\n", rx_id);
		}
	}

	/* restore rx configuration */
	if (bnad->rx_info[0].rx && !err) {
		FUNC5(bnad, 0);
		FUNC3(bnad);
		FUNC9(&bnad->bna_lock, flags);
		FUNC4(bnad, netdev->dev_addr);
		FUNC10(&bnad->bna_lock, flags);
		FUNC6(netdev);
	}

	return count;
}