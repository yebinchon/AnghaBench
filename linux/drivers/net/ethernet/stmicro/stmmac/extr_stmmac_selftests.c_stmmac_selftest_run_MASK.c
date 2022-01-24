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
typedef  int u64 ;
struct stmmac_priv {int /*<<< orphan*/  ioaddr; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  phydev; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int lb; int (* fn ) (struct stmmac_priv*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  ETH_TEST_FL_OFFLINE ; 
#define  STMMAC_LOOPBACK_MAC 130 
#define  STMMAC_LOOPBACK_NONE 129 
#define  STMMAC_LOOPBACK_PHY 128 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct stmmac_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct stmmac_priv*) ; 
 TYPE_1__* stmmac_selftests ; 
 int FUNC9 (struct stmmac_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ stmmac_test_next_id ; 
 int FUNC10 (struct stmmac_priv*) ; 

void FUNC11(struct net_device *dev,
			 struct ethtool_test *etest, u64 *buf)
{
	struct stmmac_priv *priv = FUNC3(dev);
	int count = FUNC8(priv);
	int carrier = FUNC5(dev);
	int i, ret;

	FUNC0(buf, 0, sizeof(*buf) * count);
	stmmac_test_next_id = 0;

	if (etest->flags != ETH_TEST_FL_OFFLINE) {
		FUNC2(priv->dev, "Only offline tests are supported\n");
		etest->flags |= ETH_TEST_FL_FAILED;
		return;
	} else if (!carrier) {
		FUNC2(priv->dev, "You need valid Link to execute tests\n");
		etest->flags |= ETH_TEST_FL_FAILED;
		return;
	}

	/* We don't want extra traffic */
	FUNC4(dev);

	/* Wait for queues drain */
	FUNC1(200);

	for (i = 0; i < count; i++) {
		ret = 0;

		switch (stmmac_selftests[i].lb) {
		case STMMAC_LOOPBACK_PHY:
			ret = -EOPNOTSUPP;
			if (dev->phydev)
				ret = FUNC7(dev->phydev, true);
			if (!ret)
				break;
			/* Fallthrough */
		case STMMAC_LOOPBACK_MAC:
			ret = FUNC9(priv, priv->ioaddr, true);
			break;
		case STMMAC_LOOPBACK_NONE:
			break;
		default:
			ret = -EOPNOTSUPP;
			break;
		}

		/*
		 * First tests will always be MAC / PHY loobpack. If any of
		 * them is not supported we abort earlier.
		 */
		if (ret) {
			FUNC2(priv->dev, "Loopback is not supported\n");
			etest->flags |= ETH_TEST_FL_FAILED;
			break;
		}

		ret = stmmac_selftests[i].fn(priv);
		if (ret && (ret != -EOPNOTSUPP))
			etest->flags |= ETH_TEST_FL_FAILED;
		buf[i] = ret;

		switch (stmmac_selftests[i].lb) {
		case STMMAC_LOOPBACK_PHY:
			ret = -EOPNOTSUPP;
			if (dev->phydev)
				ret = FUNC7(dev->phydev, false);
			if (!ret)
				break;
			/* Fallthrough */
		case STMMAC_LOOPBACK_MAC:
			FUNC9(priv, priv->ioaddr, false);
			break;
		default:
			break;
		}
	}

	/* Restart everything */
	if (carrier)
		FUNC6(dev);
}