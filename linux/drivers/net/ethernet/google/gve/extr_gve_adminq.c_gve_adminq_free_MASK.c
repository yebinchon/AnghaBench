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
struct gve_priv {int /*<<< orphan*/  adminq_bus_addr; int /*<<< orphan*/  adminq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct gve_priv*) ; 

void FUNC4(struct device *dev, struct gve_priv *priv)
{
	if (!FUNC3(priv))
		return;
	FUNC1(priv);
	FUNC0(dev, PAGE_SIZE, priv->adminq, priv->adminq_bus_addr);
	FUNC2(priv);
}