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
struct fec_enet_private {int /*<<< orphan*/  napi; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fec_enet_private* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev,
	netdev_features_t features)
{
	struct fec_enet_private *fep = FUNC5(netdev);
	netdev_features_t changed = features ^ netdev->features;

	if (FUNC6(netdev) && changed & NETIF_F_RXCSUM) {
		FUNC3(&fep->napi);
		FUNC7(netdev);
		FUNC2(netdev);
		FUNC0(netdev, features);
		FUNC1(netdev);
		FUNC9(netdev);
		FUNC8(netdev);
		FUNC4(&fep->napi);
	} else {
		FUNC0(netdev, features);
	}

	return 0;
}