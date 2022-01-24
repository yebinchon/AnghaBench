#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {int /*<<< orphan*/  name; TYPE_1__ stats; } ;
struct ipw2100_priv {TYPE_2__* ieee; } ;
struct TYPE_4__ {scalar_t__ iw_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IW_MODE_MONITOR ; 
 struct ipw2100_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw2100_priv*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct ipw2100_priv *priv = FUNC1(dev);

	dev->stats.tx_errors++;

#ifdef CONFIG_IPW2100_MONITOR
	if (priv->ieee->iw_mode == IW_MODE_MONITOR)
		return;
#endif

	FUNC0("%s: TX timed out.  Scheduling firmware restart.\n",
		       dev->name);
	FUNC2(priv);
}