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
struct rmnet_priv {TYPE_1__* real_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;

/* Variables and functions */
 struct rmnet_priv* FUNC0 (struct net_device const*) ; 

__attribute__((used)) static int FUNC1(const struct net_device *dev)
{
	struct rmnet_priv *priv = FUNC0(dev);

	return priv->real_dev->ifindex;
}