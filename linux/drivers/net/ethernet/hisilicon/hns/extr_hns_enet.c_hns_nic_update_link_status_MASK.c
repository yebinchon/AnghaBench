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
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {scalar_t__ phy_if; scalar_t__ phy_dev; } ;

/* Variables and functions */
 scalar_t__ PHY_INTERFACE_MODE_XGMII ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct hns_nic_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct hns_nic_priv *priv = FUNC2(netdev);

	struct hnae_handle *h = priv->ae_handle;

	if (h->phy_dev) {
		if (h->phy_if != PHY_INTERFACE_MODE_XGMII)
			return;

		(void)FUNC0(h->phy_dev);
	}
	FUNC1(netdev);
}