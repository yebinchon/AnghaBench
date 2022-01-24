#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct mt7530_priv {unsigned int id; TYPE_2__* ds; int /*<<< orphan*/  reg_mutex; TYPE_1__* dev; int /*<<< orphan*/  bus; void* reset; scalar_t__ mcm; void* io_pwr; void* core_pwr; void* rstc; } ;
struct TYPE_12__ {struct device_node* of_node; } ;
struct mdio_device {TYPE_1__ dev; int /*<<< orphan*/  bus; } ;
struct device_node {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/ * ops; struct mt7530_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSA_MAX_PORTS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 unsigned int ID_MT7530 ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct mt7530_priv*) ; 
 void* FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct mt7530_priv* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (TYPE_1__*,char*) ; 
 void* FUNC8 (TYPE_1__*,char*) ; 
 int FUNC9 (TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt7530_switch_ops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (struct device_node*,char*) ; 

__attribute__((used)) static int
FUNC14(struct mdio_device *mdiodev)
{
	struct mt7530_priv *priv;
	struct device_node *dn;

	dn = mdiodev->dev.of_node;

	priv = FUNC6(&mdiodev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->ds = FUNC10(&mdiodev->dev, DSA_MAX_PORTS);
	if (!priv->ds)
		return -ENOMEM;

	/* Use medatek,mcm property to distinguish hardware type that would
	 * casues a little bit differences on power-on sequence.
	 */
	priv->mcm = FUNC13(dn, "mediatek,mcm");
	if (priv->mcm) {
		FUNC3(&mdiodev->dev, "MT7530 adapts as multi-chip module\n");

		priv->rstc = FUNC8(&mdiodev->dev, "mcm");
		if (FUNC0(priv->rstc)) {
			FUNC2(&mdiodev->dev, "Couldn't get our reset line\n");
			return FUNC1(priv->rstc);
		}
	}

	/* Get the hardware identifier from the devicetree node.
	 * We will need it for some of the clock and regulator setup.
	 */
	priv->id = (unsigned int)(unsigned long)
		FUNC12(&mdiodev->dev);

	if (priv->id == ID_MT7530) {
		priv->core_pwr = FUNC7(&mdiodev->dev, "core");
		if (FUNC0(priv->core_pwr))
			return FUNC1(priv->core_pwr);

		priv->io_pwr = FUNC7(&mdiodev->dev, "io");
		if (FUNC0(priv->io_pwr))
			return FUNC1(priv->io_pwr);
	}

	/* Not MCM that indicates switch works as the remote standalone
	 * integrated circuit so the GPIO pin would be used to complete
	 * the reset, otherwise memory-mapped register accessing used
	 * through syscon provides in the case of MCM.
	 */
	if (!priv->mcm) {
		priv->reset = FUNC5(&mdiodev->dev, "reset",
						      GPIOD_OUT_LOW);
		if (FUNC0(priv->reset)) {
			FUNC2(&mdiodev->dev, "Couldn't get our reset line\n");
			return FUNC1(priv->reset);
		}
	}

	priv->bus = mdiodev->bus;
	priv->dev = &mdiodev->dev;
	priv->ds->priv = priv;
	priv->ds->ops = &mt7530_switch_ops;
	FUNC11(&priv->reg_mutex);
	FUNC4(&mdiodev->dev, priv);

	return FUNC9(priv->ds);
}