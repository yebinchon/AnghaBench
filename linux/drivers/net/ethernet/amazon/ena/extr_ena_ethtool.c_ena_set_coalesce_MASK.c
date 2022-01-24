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
struct ethtool_coalesce {scalar_t__ use_adaptive_rx_coalesce; int /*<<< orphan*/  rx_coalesce_usecs; int /*<<< orphan*/  tx_coalesce_usecs; } ;
struct ena_com_dev {int dummy; } ;
struct ena_adapter {struct ena_com_dev* ena_dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_com_dev*) ; 
 scalar_t__ FUNC2 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_com_dev*) ; 
 int FUNC4 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ena_adapter*) ; 
 struct ena_adapter* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *net_dev,
			    struct ethtool_coalesce *coalesce)
{
	struct ena_adapter *adapter = FUNC8(net_dev);
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	int rc;

	if (!FUNC3(ena_dev)) {
		/* the devie doesn't support interrupt moderation */
		return -EOPNOTSUPP;
	}

	rc = FUNC5(ena_dev,
							       coalesce->tx_coalesce_usecs);
	if (rc)
		return rc;

	FUNC7(adapter);

	if (coalesce->use_adaptive_rx_coalesce) {
		if (!FUNC2(ena_dev))
			FUNC1(ena_dev);
		return 0;
	}

	rc = FUNC4(ena_dev,
							       coalesce->rx_coalesce_usecs);
	if (rc)
		return rc;

	FUNC6(adapter);

	if (!coalesce->use_adaptive_rx_coalesce) {
		if (FUNC2(ena_dev))
			FUNC0(ena_dev);
	}

	return 0;
}