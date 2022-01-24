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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct TYPE_3__ {int /*<<< orphan*/  work; } ;
struct TYPE_4__ {TYPE_1__ dim; } ;
struct bcm_sysport_priv {TYPE_2__ dim; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_sysport_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bcm_sysport_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct bcm_sysport_priv *priv = FUNC3(dev);

	/* stop all software from updating hardware */
	FUNC4(dev);
	FUNC2(&priv->napi);
	FUNC1(&priv->dim.dim.work);
	FUNC5(dev->phydev);

	/* mask all interrupts */
	FUNC0(priv);
}