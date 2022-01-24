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
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct nb8800_priv {int /*<<< orphan*/  pause_tx; int /*<<< orphan*/  pause_rx; } ;

/* Variables and functions */
 struct nb8800_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct nb8800_priv *priv = FUNC0(dev);
	struct phy_device *phydev = dev->phydev;

	if (!phydev)
		return;

	FUNC1(phydev, priv->pause_rx, priv->pause_tx);
}