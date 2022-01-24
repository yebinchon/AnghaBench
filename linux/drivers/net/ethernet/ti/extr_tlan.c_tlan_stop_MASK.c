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
struct TYPE_2__ {int /*<<< orphan*/ * function; } ;
struct tlan_priv {TYPE_1__ timer; TYPE_1__ media_timer; } ;
struct net_device {scalar_t__ base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLAN_HC_AD_RST ; 
 scalar_t__ TLAN_HOST_CMD ; 
 int /*<<< orphan*/  TLAN_RECORD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct tlan_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct tlan_priv *priv = FUNC1(dev);

	FUNC0(&priv->media_timer);
	FUNC3(dev, TLAN_RECORD);
	FUNC2(TLAN_HC_AD_RST, dev->base_addr + TLAN_HOST_CMD);
	/* Reset and power down phy */
	FUNC4(dev);
	if (priv->timer.function != NULL) {
		FUNC0(&priv->timer);
		priv->timer.function = NULL;
	}
}