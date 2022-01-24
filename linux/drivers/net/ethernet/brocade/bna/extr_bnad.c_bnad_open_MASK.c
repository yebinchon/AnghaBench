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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  enet; } ;
struct bnad {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  bna_lock; TYPE_2__ bna; TYPE_1__* netdev; } ;
struct bna_pause_config {scalar_t__ rx_pause; scalar_t__ tx_pause; } ;
struct TYPE_3__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bna_pause_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnad*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct bnad*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC16(struct net_device *netdev)
{
	int err;
	struct bnad *bnad = FUNC13(netdev);
	struct bna_pause_config pause_config;
	unsigned long flags;

	FUNC11(&bnad->conf_mutex);

	/* Tx */
	err = FUNC9(bnad, 0);
	if (err)
		goto err_return;

	/* Rx */
	err = FUNC8(bnad, 0);
	if (err)
		goto cleanup_tx;

	/* Port */
	pause_config.tx_pause = 0;
	pause_config.rx_pause = 0;

	FUNC14(&bnad->bna_lock, flags);
	FUNC2(&bnad->bna.enet,
			 FUNC0(bnad->netdev->mtu), NULL);
	FUNC3(&bnad->bna.enet, &pause_config);
	FUNC1(&bnad->bna.enet);
	FUNC15(&bnad->bna_lock, flags);

	/* Enable broadcast */
	FUNC5(bnad);

	/* Restore VLANs, if any */
	FUNC7(bnad, 0);

	/* Set the UCAST address */
	FUNC14(&bnad->bna_lock, flags);
	FUNC6(bnad, netdev->dev_addr);
	FUNC15(&bnad->bna_lock, flags);

	/* Start the stats timer */
	FUNC10(bnad);

	FUNC12(&bnad->conf_mutex);

	return 0;

cleanup_tx:
	FUNC4(bnad, 0);

err_return:
	FUNC12(&bnad->conf_mutex);
	return err;
}