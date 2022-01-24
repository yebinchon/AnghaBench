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
struct net_device {int /*<<< orphan*/  name; } ;
struct bcm_enet_priv {scalar_t__ pause_tx; scalar_t__ pause_rx; scalar_t__ force_duplex_full; scalar_t__ force_speed_100; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_enet_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_enet_priv*,scalar_t__,scalar_t__) ; 
 struct bcm_enet_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,char*,char*,char*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct bcm_enet_priv *priv;

	priv = FUNC2(dev);
	FUNC0(priv, priv->force_duplex_full);
	FUNC1(priv, priv->pause_rx, priv->pause_tx);
	FUNC3(dev);

	FUNC4("%s: link forced UP - %d/%s - flow control %s/%s\n",
		dev->name,
		priv->force_speed_100 ? 100 : 10,
		priv->force_duplex_full ? "full" : "half",
		priv->pause_rx ? "rx" : "off",
		priv->pause_tx ? "tx" : "off");
}