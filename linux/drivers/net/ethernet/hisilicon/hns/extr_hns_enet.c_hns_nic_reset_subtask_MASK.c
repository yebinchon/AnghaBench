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
struct hns_nic_priv {int /*<<< orphan*/  netdev; int /*<<< orphan*/  state; TYPE_1__* ae_handle; } ;
typedef  enum hnae_port_type { ____Placeholder_hnae_port_type } hnae_port_type ;
struct TYPE_2__ {int port_type; } ;

/* Variables and functions */
 int HNAE_PORT_DEBUG ; 
 int /*<<< orphan*/  NIC_STATE2_RESET_REQUESTED ; 
 int /*<<< orphan*/  NIC_STATE_DOWN ; 
 int /*<<< orphan*/  NIC_STATE_REMOVING ; 
 int /*<<< orphan*/  NIC_STATE_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_nic_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct hns_nic_priv *priv)
{
	enum hnae_port_type type = priv->ae_handle->port_type;

	if (!FUNC7(NIC_STATE2_RESET_REQUESTED, &priv->state))
		return;
	FUNC0(NIC_STATE2_RESET_REQUESTED, &priv->state);

	/* If we're already down, removing or resetting, just bail */
	if (FUNC7(NIC_STATE_DOWN, &priv->state) ||
	    FUNC7(NIC_STATE_REMOVING, &priv->state) ||
	    FUNC7(NIC_STATE_RESETTING, &priv->state))
		return;

	FUNC1(priv);
	FUNC3(priv->netdev, "try to reset %s port!\n",
		    (type == HNAE_PORT_DEBUG ? "debug" : "service"));

	FUNC5();
	/* put off any impending NetWatchDogTimeout */
	FUNC4(priv->netdev);
	FUNC2(priv->netdev);

	FUNC6();
}