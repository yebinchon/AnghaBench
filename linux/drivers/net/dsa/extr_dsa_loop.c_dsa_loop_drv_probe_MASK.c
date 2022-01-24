#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct dsa_loop_pdata* platform_data; } ;
struct mdio_device {TYPE_2__ dev; int /*<<< orphan*/  bus; } ;
struct dsa_switch {struct dsa_loop_priv* priv; int /*<<< orphan*/ * ops; TYPE_2__* dev; } ;
struct dsa_loop_priv {int /*<<< orphan*/  bus; TYPE_6__* netdev; } ;
struct TYPE_7__ {int /*<<< orphan*/ ** netdev; } ;
struct dsa_loop_pdata {TYPE_1__ cd; int /*<<< orphan*/  netdev; int /*<<< orphan*/  enabled_ports; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t DSA_LOOP_CPU_PORT ; 
 int /*<<< orphan*/  DSA_MAX_PORTS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct dsa_switch*) ; 
 struct dsa_loop_priv* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsa_loop_driver ; 
 int FUNC4 (struct dsa_switch*) ; 
 struct dsa_switch* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 

__attribute__((used)) static int FUNC6(struct mdio_device *mdiodev)
{
	struct dsa_loop_pdata *pdata = mdiodev->dev.platform_data;
	struct dsa_loop_priv *ps;
	struct dsa_switch *ds;

	if (!pdata)
		return -ENODEV;

	FUNC1(&mdiodev->dev, "%s: 0x%0x\n",
		 pdata->name, pdata->enabled_ports);

	ds = FUNC5(&mdiodev->dev, DSA_MAX_PORTS);
	if (!ds)
		return -ENOMEM;

	ps = FUNC3(&mdiodev->dev, sizeof(*ps), GFP_KERNEL);
	if (!ps)
		return -ENOMEM;

	ps->netdev = FUNC0(&init_net, pdata->netdev);
	if (!ps->netdev)
		return -EPROBE_DEFER;

	pdata->cd.netdev[DSA_LOOP_CPU_PORT] = &ps->netdev->dev;

	ds->dev = &mdiodev->dev;
	ds->ops = &dsa_loop_driver;
	ds->priv = ps;
	ps->bus = mdiodev->bus;

	FUNC2(&mdiodev->dev, ds);

	return FUNC4(ds);
}