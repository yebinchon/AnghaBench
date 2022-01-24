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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; int /*<<< orphan*/ * sopass; } ;
struct bcmgenet_priv {int wolopts; } ;

/* Variables and functions */
 int /*<<< orphan*/  UMAC_MPD_PW_LS ; 
 int /*<<< orphan*/  UMAC_MPD_PW_MS ; 
 int WAKE_MAGIC ; 
 int WAKE_MAGICSECURE ; 
 int /*<<< orphan*/  FUNC0 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct bcmgenet_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct bcmgenet_priv *priv = FUNC2(dev);
	u32 reg;

	wol->supported = WAKE_MAGIC | WAKE_MAGICSECURE;
	wol->wolopts = priv->wolopts;
	FUNC1(wol->sopass, 0, sizeof(wol->sopass));

	if (wol->wolopts & WAKE_MAGICSECURE) {
		reg = FUNC0(priv, UMAC_MPD_PW_MS);
		FUNC3(reg, &wol->sopass[0]);
		reg = FUNC0(priv, UMAC_MPD_PW_LS);
		FUNC4(reg, &wol->sopass[2]);
	}
}