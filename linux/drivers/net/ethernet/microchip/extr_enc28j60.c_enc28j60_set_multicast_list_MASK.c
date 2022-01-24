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
struct enc28j60_net {int rxfilter; int /*<<< orphan*/  setrx_work; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int RXFILTER_MULTI ; 
 int RXFILTER_NORMAL ; 
 int RXFILTER_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct enc28j60_net* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct enc28j60_net*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct enc28j60_net *priv = FUNC2(dev);
	int oldfilter = priv->rxfilter;

	if (dev->flags & IFF_PROMISC) {
		if (FUNC3(priv))
			FUNC0(dev, "promiscuous mode\n");
		priv->rxfilter = RXFILTER_PROMISC;
	} else if ((dev->flags & IFF_ALLMULTI) || !FUNC1(dev)) {
		if (FUNC3(priv))
			FUNC0(dev, "%smulticast mode\n",
				    (dev->flags & IFF_ALLMULTI) ? "all-" : "");
		priv->rxfilter = RXFILTER_MULTI;
	} else {
		if (FUNC3(priv))
			FUNC0(dev, "normal mode\n");
		priv->rxfilter = RXFILTER_NORMAL;
	}

	if (oldfilter != priv->rxfilter)
		FUNC4(&priv->setrx_work);
}