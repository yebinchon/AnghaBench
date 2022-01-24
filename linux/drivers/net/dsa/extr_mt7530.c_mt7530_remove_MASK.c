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
struct mt7530_priv {int /*<<< orphan*/  reg_mutex; int /*<<< orphan*/  ds; int /*<<< orphan*/  dev; int /*<<< orphan*/  io_pwr; int /*<<< orphan*/  core_pwr; } ;
struct mdio_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct mt7530_priv* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mdio_device *mdiodev)
{
	struct mt7530_priv *priv = FUNC1(&mdiodev->dev);
	int ret = 0;

	ret = FUNC4(priv->core_pwr);
	if (ret < 0)
		FUNC0(priv->dev,
			"Failed to disable core power: %d\n", ret);

	ret = FUNC4(priv->io_pwr);
	if (ret < 0)
		FUNC0(priv->dev, "Failed to disable io pwr: %d\n",
			ret);

	FUNC2(priv->ds);
	FUNC3(&priv->reg_mutex);
}