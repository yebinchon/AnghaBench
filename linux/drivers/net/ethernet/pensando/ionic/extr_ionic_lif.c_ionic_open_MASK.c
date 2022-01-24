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
struct net_device {int dummy; } ;
struct ionic_lif {int /*<<< orphan*/  state; int /*<<< orphan*/  nxqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IONIC_LIF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct ionic_lif*) ; 
 int FUNC1 (struct ionic_lif*) ; 
 int /*<<< orphan*/  FUNC2 (struct ionic_lif*) ; 
 int FUNC3 (struct ionic_lif*) ; 
 int /*<<< orphan*/  FUNC4 (struct ionic_lif*) ; 
 int FUNC5 (struct ionic_lif*) ; 
 struct ionic_lif* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(struct net_device *netdev)
{
	struct ionic_lif *lif = FUNC6(netdev);
	int err;

	FUNC7(netdev);

	err = FUNC1(lif);
	if (err)
		return err;

	err = FUNC5(lif);
	if (err)
		goto err_txrx_free;

	err = FUNC3(lif);
	if (err)
		goto err_txrx_deinit;

	FUNC10(netdev, lif->nxqs);
	FUNC9(netdev, lif->nxqs);

	FUNC12(IONIC_LIF_UP, lif->state);

	FUNC0(lif);
	if (FUNC8(netdev))
		FUNC11(netdev);

	return 0;

err_txrx_deinit:
	FUNC2(lif);
err_txrx_free:
	FUNC4(lif);
	return err;
}