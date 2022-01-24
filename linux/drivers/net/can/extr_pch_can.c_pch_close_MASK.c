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
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct pch_can_priv {TYPE_2__ can; TYPE_1__* dev; int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct pch_can_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_can_priv*) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	struct pch_can_priv *priv = FUNC3(ndev);

	FUNC4(ndev);
	FUNC2(&priv->napi);
	FUNC5(priv);
	FUNC1(priv->dev->irq, ndev);
	FUNC0(ndev);
	priv->can.state = CAN_STATE_STOPPED;
	return 0;
}