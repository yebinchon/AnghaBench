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
struct hns_nic_priv {int /*<<< orphan*/  state; struct hnae_handle* ae_handle; } ;
struct hnae_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIC_STATE_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae_handle*) ; 
 struct hns_nic_priv* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void FUNC5(struct net_device *ndev)
{
	struct hns_nic_priv *priv = FUNC2(ndev);
	struct hnae_handle *handle = priv->ae_handle;

	while (FUNC3(NIC_STATE_RESETTING, &priv->state))
		FUNC4(1000, 2000);

	(void)FUNC1(handle);

	FUNC0(NIC_STATE_RESETTING, &priv->state);
}