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
struct phy_device {int dummy; } ;
struct net_device {int flags; struct phy_device* phydev; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_2__* dev; int /*<<< orphan*/  phy_if; } ;
typedef  enum hnae_loop { ____Placeholder_hnae_loop } hnae_loop ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_loopback ) (struct hnae_handle*,int,int) ;int /*<<< orphan*/  (* set_promisc_mode ) (struct hnae_handle*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_PROMISC ; 
#define  MAC_INTERNALLOOP_MAC 132 
#define  MAC_INTERNALLOOP_PHY 131 
#define  MAC_INTERNALLOOP_SERDES 130 
#define  MAC_LOOP_NONE 129 
#define  MAC_LOOP_PHY_NONE 128 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_XGMII ; 
 int FUNC0 (struct phy_device*,int) ; 
 struct hns_nic_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct hnae_handle*,int,int) ; 
 int FUNC3 (struct hnae_handle*,int,int) ; 
 int FUNC4 (struct hnae_handle*,int,int) ; 
 int FUNC5 (struct hnae_handle*,int const,int) ; 
 int FUNC6 (struct hnae_handle*,int const,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hnae_handle*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hnae_handle*,int) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev,
		      enum hnae_loop loop)
{
	int ret = 0;
	struct hns_nic_priv *priv = FUNC1(ndev);
	struct phy_device *phy_dev = ndev->phydev;
	struct hnae_handle *h = priv->ae_handle;

	switch (loop) {
	case MAC_INTERNALLOOP_PHY:
		ret = FUNC0(phy_dev, 0x1);
		if (!ret)
			ret = h->dev->ops->set_loopback(h, loop, 0x1);
		break;
	case MAC_INTERNALLOOP_MAC:
		if ((h->dev->ops->set_loopback) &&
		    (priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII))
			ret = h->dev->ops->set_loopback(h, loop, 0x1);
		break;
	case MAC_INTERNALLOOP_SERDES:
		if (h->dev->ops->set_loopback)
			ret = h->dev->ops->set_loopback(h, loop, 0x1);
		break;
	case MAC_LOOP_PHY_NONE:
		ret = FUNC0(phy_dev, 0x0);
		/* fall through */
	case MAC_LOOP_NONE:
		if (!ret && h->dev->ops->set_loopback) {
			if (priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII)
				ret = h->dev->ops->set_loopback(h,
					MAC_INTERNALLOOP_MAC, 0x0);

			if (!ret)
				ret = h->dev->ops->set_loopback(h,
					MAC_INTERNALLOOP_SERDES, 0x0);
		}
		break;
	default:
		ret = -EINVAL;
		break;
	}

	if (!ret) {
		if (loop == MAC_LOOP_NONE)
			h->dev->ops->set_promisc_mode(
				h, ndev->flags & IFF_PROMISC);
		else
			h->dev->ops->set_promisc_mode(h, 1);
	}
	return ret;
}