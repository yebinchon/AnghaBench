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
struct ethtool_coalesce {int tx_coalesce_usecs; int rx_coalesce_usecs; scalar_t__ use_adaptive_rx_coalesce; } ;
struct ena_com_dev {int intr_delay_resolution; } ;
struct ena_adapter {struct ena_com_dev* ena_dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct ena_com_dev*) ; 
 int FUNC1 (struct ena_com_dev*) ; 
 int FUNC2 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_com_dev*) ; 
 struct ena_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *net_dev,
			    struct ethtool_coalesce *coalesce)
{
	struct ena_adapter *adapter = FUNC4(net_dev);
	struct ena_com_dev *ena_dev = adapter->ena_dev;

	if (!FUNC3(ena_dev)) {
		/* the devie doesn't support interrupt moderation */
		return -EOPNOTSUPP;
	}

	coalesce->tx_coalesce_usecs =
		FUNC2(ena_dev) *
			ena_dev->intr_delay_resolution;

	if (!FUNC0(ena_dev))
		coalesce->rx_coalesce_usecs =
			FUNC1(ena_dev)
			* ena_dev->intr_delay_resolution;

	coalesce->use_adaptive_rx_coalesce =
		FUNC0(ena_dev);

	return 0;
}