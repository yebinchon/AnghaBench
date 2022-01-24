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
struct rcar_canfd_global {int /*<<< orphan*/  can_clk; } ;
struct rcar_canfd_channel {int /*<<< orphan*/  napi; struct rcar_canfd_global* gpriv; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int) ; 
 struct rcar_canfd_channel* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *ndev)
{
	struct rcar_canfd_channel *priv = FUNC7(ndev);
	struct rcar_canfd_global *gpriv = priv->gpriv;
	int err;

	/* Peripheral clock is already enabled in probe */
	err = FUNC2(gpriv->can_clk);
	if (err) {
		FUNC6(ndev, "failed to enable CAN clock, error %d\n", err);
		goto out_clock;
	}

	err = FUNC9(ndev);
	if (err) {
		FUNC6(ndev, "open_candev() failed, error %d\n", err);
		goto out_can_clock;
	}

	FUNC5(&priv->napi);
	err = FUNC10(ndev);
	if (err)
		goto out_close;
	FUNC8(ndev);
	FUNC0(ndev, CAN_LED_EVENT_OPEN);
	return 0;
out_close:
	FUNC4(&priv->napi);
	FUNC3(ndev);
out_can_clock:
	FUNC1(gpriv->can_clk);
out_clock:
	return err;
}