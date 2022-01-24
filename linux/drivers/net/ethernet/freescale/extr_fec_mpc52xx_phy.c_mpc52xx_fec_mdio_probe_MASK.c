#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mpc52xx_fec_mdio_priv {TYPE_1__* regs; } ;
struct mii_bus {char* name; struct device* parent; struct mpc52xx_fec_mdio_priv* priv; int /*<<< orphan*/  id; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mii_speed; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct mii_bus*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpc52xx_fec_mdio_priv*) ; 
 struct mpc52xx_fec_mdio_priv* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct mii_bus*) ; 
 int /*<<< orphan*/  mpc52xx_fec_mdio_read ; 
 int /*<<< orphan*/  mpc52xx_fec_mdio_write ; 
 int FUNC7 (struct device_node*) ; 
 int FUNC8 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC9 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *of)
{
	struct device *dev = &of->dev;
	struct device_node *np = of->dev.of_node;
	struct mii_bus *bus;
	struct mpc52xx_fec_mdio_priv *priv;
	struct resource res;
	int err;

	bus = FUNC5();
	if (bus == NULL)
		return -ENOMEM;
	priv = FUNC4(sizeof(*priv), GFP_KERNEL);
	if (priv == NULL) {
		err = -ENOMEM;
		goto out_free;
	}

	bus->name = "mpc52xx MII bus";
	bus->read = mpc52xx_fec_mdio_read;
	bus->write = mpc52xx_fec_mdio_write;

	/* setup registers */
	err = FUNC8(np, 0, &res);
	if (err)
		goto out_free;
	priv->regs = FUNC1(res.start, FUNC11(&res));
	if (priv->regs == NULL) {
		err = -ENOMEM;
		goto out_free;
	}

	FUNC12(bus->id, MII_BUS_ID_SIZE, "%x", res.start);
	bus->priv = priv;

	bus->parent = dev;
	FUNC0(dev, bus);

	/* set MII speed */
	FUNC10(&priv->regs->mii_speed,
		((FUNC7(of->dev.of_node) >> 20) / 5) << 1);

	err = FUNC9(bus, np);
	if (err)
		goto out_unmap;

	return 0;

 out_unmap:
	FUNC2(priv->regs);
 out_free:
	FUNC3(priv);
	FUNC6(bus);

	return err;
}