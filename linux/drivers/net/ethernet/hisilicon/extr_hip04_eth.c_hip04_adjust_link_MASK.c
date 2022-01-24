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
struct phy_device {scalar_t__ speed; scalar_t__ duplex; } ;
struct net_device {int dummy; } ;
struct hip04_priv {scalar_t__ speed; scalar_t__ duplex; struct phy_device* phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,scalar_t__,scalar_t__) ; 
 struct hip04_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev)
{
	struct hip04_priv *priv = FUNC1(ndev);
	struct phy_device *phy = priv->phy;

	if ((priv->speed != phy->speed) || (priv->duplex != phy->duplex)) {
		FUNC0(ndev, phy->speed, phy->duplex);
		FUNC2(phy);
	}
}