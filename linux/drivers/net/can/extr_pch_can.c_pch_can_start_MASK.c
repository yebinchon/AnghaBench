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
struct TYPE_2__ {scalar_t__ state; } ;
struct pch_can_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CAN_STATE_ERROR_ACTIVE ; 
 scalar_t__ CAN_STATE_STOPPED ; 
 int /*<<< orphan*/  PCH_CAN_RUN ; 
 struct pch_can_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_can_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_can_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_can_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_can_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_can_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct net_device *ndev)
{
	struct pch_can_priv *priv = FUNC0(ndev);

	if (priv->can.state != CAN_STATE_STOPPED)
		FUNC1(priv);

	FUNC6(ndev);
	FUNC2(priv);

	FUNC5(priv, 1);
	FUNC4(priv, 1);

	/* Setting the CAN to run mode. */
	FUNC3(priv, PCH_CAN_RUN);

	priv->can.state = CAN_STATE_ERROR_ACTIVE;

	return;
}