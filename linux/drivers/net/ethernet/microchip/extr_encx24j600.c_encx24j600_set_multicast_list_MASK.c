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
struct net_device {int flags; } ;
struct encx24j600_priv {int rxfilter; int /*<<< orphan*/  setrx_work; int /*<<< orphan*/  kworker; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int RXFILTER_MULTI ; 
 int RXFILTER_NORMAL ; 
 int RXFILTER_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct encx24j600_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct encx24j600_priv*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct encx24j600_priv *priv = FUNC2(dev);
	int oldfilter = priv->rxfilter;

	if (dev->flags & IFF_PROMISC) {
		FUNC3(priv, link, dev, "promiscuous mode\n");
		priv->rxfilter = RXFILTER_PROMISC;
	} else if ((dev->flags & IFF_ALLMULTI) || !FUNC1(dev)) {
		FUNC3(priv, link, dev, "%smulticast mode\n",
			  (dev->flags & IFF_ALLMULTI) ? "all-" : "");
		priv->rxfilter = RXFILTER_MULTI;
	} else {
		FUNC3(priv, link, dev, "normal mode\n");
		priv->rxfilter = RXFILTER_NORMAL;
	}

	if (oldfilter != priv->rxfilter)
		FUNC0(&priv->kworker, &priv->setrx_work);
}