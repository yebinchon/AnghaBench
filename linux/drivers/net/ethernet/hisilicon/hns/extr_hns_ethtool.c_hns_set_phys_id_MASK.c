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
struct net_device {struct phy_device* phydev; } ;
struct hns_nic_priv {int /*<<< orphan*/  phy_led_val; struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_2__* dev; } ;
typedef  enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_led_id ) (struct hnae_handle*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
#define  ETHTOOL_ID_ACTIVE 131 
#define  ETHTOOL_ID_INACTIVE 130 
#define  ETHTOOL_ID_OFF 129 
#define  ETHTOOL_ID_ON 128 
 int /*<<< orphan*/  HNAE_LED_ACTIVE ; 
 int /*<<< orphan*/  HNAE_LED_INACTIVE ; 
 int /*<<< orphan*/  HNAE_LED_OFF ; 
 int /*<<< orphan*/  HNAE_LED_ON ; 
 int /*<<< orphan*/  HNS_LED_FC_REG ; 
 int /*<<< orphan*/  HNS_LED_FORCE_OFF ; 
 int /*<<< orphan*/  HNS_LED_FORCE_ON ; 
 int /*<<< orphan*/  HNS_PHY_PAGE_COPPER ; 
 int /*<<< orphan*/  HNS_PHY_PAGE_LED ; 
 int /*<<< orphan*/  HNS_PHY_PAGE_REG ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct hns_nic_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hnae_handle*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hnae_handle*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hnae_handle*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hnae_handle*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct net_device *netdev, enum ethtool_phys_id_state state)
{
	struct hns_nic_priv *priv = FUNC1(netdev);
	struct hnae_handle *h = priv->ae_handle;
	struct phy_device *phy_dev = netdev->phydev;
	int ret;

	if (phy_dev)
		switch (state) {
		case ETHTOOL_ID_ACTIVE:
			ret = FUNC3(phy_dev, HNS_PHY_PAGE_REG,
					HNS_PHY_PAGE_LED);
			if (ret)
				return ret;

			priv->phy_led_val = FUNC2(phy_dev, HNS_LED_FC_REG);

			ret = FUNC3(phy_dev, HNS_PHY_PAGE_REG,
					HNS_PHY_PAGE_COPPER);
			if (ret)
				return ret;
			return 2;
		case ETHTOOL_ID_ON:
			ret = FUNC0(netdev, HNS_LED_FORCE_ON);
			if (ret)
				return ret;
			break;
		case ETHTOOL_ID_OFF:
			ret = FUNC0(netdev, HNS_LED_FORCE_OFF);
			if (ret)
				return ret;
			break;
		case ETHTOOL_ID_INACTIVE:
			ret = FUNC3(phy_dev, HNS_PHY_PAGE_REG,
					HNS_PHY_PAGE_LED);
			if (ret)
				return ret;

			ret = FUNC3(phy_dev, HNS_LED_FC_REG,
					priv->phy_led_val);
			if (ret)
				return ret;

			ret = FUNC3(phy_dev, HNS_PHY_PAGE_REG,
					HNS_PHY_PAGE_COPPER);
			if (ret)
				return ret;
			break;
		default:
			return -EINVAL;
		}
	else
		switch (state) {
		case ETHTOOL_ID_ACTIVE:
			return h->dev->ops->set_led_id(h, HNAE_LED_ACTIVE);
		case ETHTOOL_ID_ON:
			return h->dev->ops->set_led_id(h, HNAE_LED_ON);
		case ETHTOOL_ID_OFF:
			return h->dev->ops->set_led_id(h, HNAE_LED_OFF);
		case ETHTOOL_ID_INACTIVE:
			return h->dev->ops->set_led_id(h, HNAE_LED_INACTIVE);
		default:
			return -EINVAL;
		}

	return 0;
}