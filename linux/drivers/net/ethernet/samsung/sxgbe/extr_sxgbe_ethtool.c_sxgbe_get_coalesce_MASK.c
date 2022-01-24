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
struct sxgbe_priv_data {int /*<<< orphan*/  rx_riwt; scalar_t__ use_riwt; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int /*<<< orphan*/  rx_coalesce_usecs; } ;

/* Variables and functions */
 struct sxgbe_priv_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sxgbe_priv_data*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
			      struct ethtool_coalesce *ec)
{
	struct sxgbe_priv_data *priv = FUNC0(dev);

	if (priv->use_riwt)
		ec->rx_coalesce_usecs = FUNC1(priv->rx_riwt, priv);

	return 0;
}