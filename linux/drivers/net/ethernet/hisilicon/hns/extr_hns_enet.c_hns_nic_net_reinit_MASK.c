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
struct hns_nic_priv {int /*<<< orphan*/  state; int /*<<< orphan*/  netdev; TYPE_1__* ae_handle; } ;
typedef  enum hnae_port_type { ____Placeholder_hnae_port_type } hnae_port_type ;
struct TYPE_2__ {int port_type; } ;

/* Variables and functions */
 int HNAE_PORT_DEBUG ; 
 int /*<<< orphan*/  NIC_STATE_REINITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct hns_nic_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

void FUNC8(struct net_device *netdev)
{
	struct hns_nic_priv *priv = FUNC4(netdev);
	enum hnae_port_type type = priv->ae_handle->port_type;

	FUNC5(priv->netdev);
	while (FUNC6(NIC_STATE_REINITING, &priv->state))
		FUNC7(1000, 2000);

	FUNC1(netdev);

	/* Only do hns_nic_net_reset in debug mode
	 * because of hardware limitation.
	 */
	if (type == HNAE_PORT_DEBUG)
		FUNC2(netdev);

	(void)FUNC3(netdev);
	FUNC0(NIC_STATE_REINITING, &priv->state);
}