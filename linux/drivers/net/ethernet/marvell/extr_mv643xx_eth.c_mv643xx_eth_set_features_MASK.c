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
struct mv643xx_eth_private {int dummy; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  PORT_CONFIG ; 
 struct mv643xx_eth_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct net_device *dev, netdev_features_t features)
{
	struct mv643xx_eth_private *mp = FUNC0(dev);
	bool rx_csum = features & NETIF_F_RXCSUM;

	FUNC1(mp, PORT_CONFIG, rx_csum ? 0x02000000 : 0x00000000);

	return 0;
}