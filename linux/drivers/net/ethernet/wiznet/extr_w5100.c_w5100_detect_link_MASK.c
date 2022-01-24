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
struct w5100_priv {int /*<<< orphan*/  link_gpio; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct w5100_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct w5100_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *ndev_instance)
{
	struct net_device *ndev = ndev_instance;
	struct w5100_priv *priv = FUNC1(ndev);

	if (FUNC5(ndev)) {
		if (FUNC0(priv->link_gpio) != 0) {
			FUNC4(priv, link, ndev, "link is up\n");
			FUNC3(ndev);
		} else {
			FUNC4(priv, link, ndev, "link is down\n");
			FUNC2(ndev);
		}
	}

	return IRQ_HANDLED;
}