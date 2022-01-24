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
typedef  scalar_t__ u64 ;
struct net_device {int dummy; } ;
struct hns_nic_priv {int /*<<< orphan*/  state; int /*<<< orphan*/  netdev; TYPE_1__* ae_handle; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;
typedef  enum hnae_loop { ____Placeholder_hnae_loop } hnae_loop ;
struct TYPE_2__ {scalar_t__ phy_if; int /*<<< orphan*/  phy_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  ETH_TEST_FL_OFFLINE ; 
 int MAC_INTERNALLOOP_MAC ; 
 int MAC_INTERNALLOOP_PHY ; 
 int MAC_INTERNALLOOP_SERDES ; 
 int /*<<< orphan*/  NIC_STATE_TESTING ; 
 scalar_t__ PHY_INTERFACE_MODE_XGMII ; 
 int SELF_TEST_TPYE_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 scalar_t__ FUNC1 (struct net_device*,int) ; 
 scalar_t__ FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct hns_nic_priv* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct net_device *ndev,
			      struct ethtool_test *eth_test, u64 *data)
{
	struct hns_nic_priv *priv = FUNC8(ndev);
	bool if_running = FUNC9(ndev);
#define SELF_TEST_TPYE_NUM 3
	int st_param[SELF_TEST_TPYE_NUM][2];
	int i;
	int test_index = 0;

	st_param[0][0] = MAC_INTERNALLOOP_MAC; /* XGE not supported lb */
	st_param[0][1] = (priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII);
	st_param[1][0] = MAC_INTERNALLOOP_SERDES;
	st_param[1][1] = 1; /*serdes must exist*/
	st_param[2][0] = MAC_INTERNALLOOP_PHY; /* only supporte phy node*/
	st_param[2][1] = ((!!(priv->ae_handle->phy_dev)) &&
		(priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII));

	if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
		FUNC10(NIC_STATE_TESTING, &priv->state);

		if (if_running)
			FUNC4(ndev);

		for (i = 0; i < SELF_TEST_TPYE_NUM; i++) {
			if (!st_param[i][1])
				continue;	/* NEXT testing */

			data[test_index] = FUNC2(ndev,
				(enum hnae_loop)st_param[i][0]);
			if (!data[test_index]) {
				data[test_index] = FUNC1(
					ndev, (enum hnae_loop)st_param[i][0]);
				(void)FUNC0(ndev,
						(enum hnae_loop)st_param[i][0]);
			}

			if (data[test_index])
				eth_test->flags |= ETH_TEST_FL_FAILED;

			test_index++;
		}

		FUNC6(priv->netdev);

		FUNC3(NIC_STATE_TESTING, &priv->state);

		if (if_running)
			(void)FUNC5(ndev, NULL);
	}
	/* Online tests aren't run; pass by default */

	(void)FUNC7(4 * 1000);
}