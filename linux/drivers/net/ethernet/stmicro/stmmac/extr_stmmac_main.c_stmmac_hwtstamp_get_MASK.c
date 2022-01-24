#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ atime_stamp; scalar_t__ time_stamp; } ;
struct hwtstamp_config {int dummy; } ;
struct stmmac_priv {TYPE_1__ dma_cap; struct hwtstamp_config tstamp_config; } ;
struct net_device {int dummy; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;

/* Variables and functions */
 int EFAULT ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 struct stmmac_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct ifreq *ifr)
{
	struct stmmac_priv *priv = FUNC1(dev);
	struct hwtstamp_config *config = &priv->tstamp_config;

	if (!(priv->dma_cap.time_stamp || priv->dma_cap.atime_stamp))
		return -EOPNOTSUPP;

	return FUNC0(ifr->ifr_data, config,
			    sizeof(*config)) ? -EFAULT : 0;
}