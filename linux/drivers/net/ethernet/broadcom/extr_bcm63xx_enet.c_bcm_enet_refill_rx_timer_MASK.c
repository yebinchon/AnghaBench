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
struct net_device {int dummy; } ;
struct bcm_enet_priv {int /*<<< orphan*/  rx_lock; struct net_device* net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct bcm_enet_priv* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct bcm_enet_priv* priv ; 
 int /*<<< orphan*/  rx_timeout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct bcm_enet_priv *priv = FUNC1(priv, t, rx_timeout);
	struct net_device *dev = priv->net_dev;

	FUNC2(&priv->rx_lock);
	FUNC0(dev);
	FUNC3(&priv->rx_lock);
}