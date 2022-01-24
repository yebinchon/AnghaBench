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
struct netsec_priv {int /*<<< orphan*/  mii_bus; int /*<<< orphan*/  dev; struct phy_device* phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 

__attribute__((used)) static void FUNC4(struct netsec_priv *priv)
{
	struct phy_device *phydev = priv->phydev;

	if (!FUNC0(priv->dev) && phydev) {
		FUNC3(phydev);
		FUNC2(phydev);
	}

	FUNC1(priv->mii_bus);
}