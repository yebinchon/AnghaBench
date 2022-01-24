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
 int /*<<< orphan*/  CAN_LED_EVENT_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rcar_canfd_channel* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev)
{
	struct rcar_canfd_channel *priv = FUNC4(ndev);
	struct rcar_canfd_global *gpriv = priv->gpriv;

	FUNC5(ndev);
	FUNC6(ndev);
	FUNC3(&priv->napi);
	FUNC1(gpriv->can_clk);
	FUNC2(ndev);
	FUNC0(ndev, CAN_LED_EVENT_STOP);
	return 0;
}