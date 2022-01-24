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
struct net_device {int features; } ;
struct lio {int dev_capability; int enc_dev_capability; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_LRO ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  OCTNET_CMD_LRO_DISABLE ; 
 int /*<<< orphan*/  OCTNET_CMD_LRO_ENABLE ; 
 int /*<<< orphan*/  OCTNET_CMD_RXCSUM_DISABLE ; 
 int /*<<< orphan*/  OCTNET_CMD_RXCSUM_ENABLE ; 
 int /*<<< orphan*/  OCTNET_CMD_TNL_RX_CSUM_CTL ; 
 int OCTNIC_LROIPV4 ; 
 int OCTNIC_LROIPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lio* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
				 netdev_features_t features)
{
	struct lio *lio = FUNC2(netdev);

	if (!((netdev->features ^ features) & NETIF_F_LRO))
		return 0;

	if ((features & NETIF_F_LRO) && (lio->dev_capability & NETIF_F_LRO))
		FUNC0(netdev, OCTNET_CMD_LRO_ENABLE,
				     OCTNIC_LROIPV4 | OCTNIC_LROIPV6);
	else if (!(features & NETIF_F_LRO) &&
		 (lio->dev_capability & NETIF_F_LRO))
		FUNC0(netdev, OCTNET_CMD_LRO_DISABLE,
				     OCTNIC_LROIPV4 | OCTNIC_LROIPV6);
	if (!(netdev->features & NETIF_F_RXCSUM) &&
	    (lio->enc_dev_capability & NETIF_F_RXCSUM) &&
	    (features & NETIF_F_RXCSUM))
		FUNC1(netdev, OCTNET_CMD_TNL_RX_CSUM_CTL,
					    OCTNET_CMD_RXCSUM_ENABLE);
	else if ((netdev->features & NETIF_F_RXCSUM) &&
		 (lio->enc_dev_capability & NETIF_F_RXCSUM) &&
		 !(features & NETIF_F_RXCSUM))
		FUNC1(netdev, OCTNET_CMD_TNL_RX_CSUM_CTL,
					    OCTNET_CMD_RXCSUM_DISABLE);

	return 0;
}