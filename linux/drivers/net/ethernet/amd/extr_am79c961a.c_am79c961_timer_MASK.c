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
struct timer_list {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  base_addr; } ;
struct dev_priv {int /*<<< orphan*/  timer; int /*<<< orphan*/  chip_lock; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISALED0 ; 
 unsigned int ISALED0_LNKST ; 
 struct dev_priv* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 unsigned int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 struct dev_priv* priv ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct dev_priv *priv = FUNC0(priv, t, timer);
	struct net_device *dev = priv->dev;
	unsigned int lnkstat, carrier;
	unsigned long flags;

	FUNC8(&priv->chip_lock, flags);
	lnkstat = FUNC7(dev->base_addr, ISALED0) & ISALED0_LNKST;
	FUNC9(&priv->chip_lock, flags);
	carrier = FUNC4(dev);

	if (lnkstat && !carrier) {
		FUNC5(dev);
		FUNC6("%s: link up\n", dev->name);
	} else if (!lnkstat && carrier) {
		FUNC3(dev);
		FUNC6("%s: link down\n", dev->name);
	}

	FUNC1(&priv->timer, jiffies + FUNC2(500));
}