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
struct net_device {int dummy; } ;
struct gve_priv {int /*<<< orphan*/  tx_timeo_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gve_priv*) ; 
 struct gve_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct gve_priv *priv = FUNC1(dev);

	FUNC0(priv);
	priv->tx_timeo_cnt++;
}