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
struct net_device {int* dev_addr; } ;
struct hip04_priv {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ GE_STATION_MAC_ADDRESS ; 
 struct hip04_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev)
{
	struct hip04_priv *priv = FUNC0(ndev);

	FUNC1(((ndev->dev_addr[0] << 8) | (ndev->dev_addr[1])),
		       priv->base + GE_STATION_MAC_ADDRESS);
	FUNC1(((ndev->dev_addr[2] << 24) | (ndev->dev_addr[3] << 16) |
			(ndev->dev_addr[4] << 8) | (ndev->dev_addr[5])),
		       priv->base + GE_STATION_MAC_ADDRESS + 4);
}