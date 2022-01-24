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
struct sja1000_priv {scalar_t__ reg_base; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct sja1000_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct sja1000_priv*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct sja1000_priv *priv = FUNC1(dev);

	if (priv->reg_base && FUNC2(priv)) {
		FUNC0(dev, "probing failed\n");
		return 0;
	}
	return -1;
}