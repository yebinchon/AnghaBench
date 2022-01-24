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
typedef  union gve_adminq_command {int dummy; } gve_adminq_command ;
struct gve_priv {int adminq_bus_addr; int adminq_mask; TYPE_1__* reg_bar0; scalar_t__ adminq_prod_cnt; int /*<<< orphan*/  adminq; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  adminq_pfn; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct device *dev, struct gve_priv *priv)
{
	priv->adminq = FUNC0(dev, PAGE_SIZE,
					  &priv->adminq_bus_addr, GFP_KERNEL);
	if (FUNC3(!priv->adminq))
		return -ENOMEM;

	priv->adminq_mask = (PAGE_SIZE / sizeof(union gve_adminq_command)) - 1;
	priv->adminq_prod_cnt = 0;

	/* Setup Admin queue with the device */
	FUNC2(priv->adminq_bus_addr / PAGE_SIZE,
		    &priv->reg_bar0->adminq_pfn);

	FUNC1(priv);
	return 0;
}