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
struct qca8k_priv {int /*<<< orphan*/  ds; } ;
struct mdio_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int QCA8K_NUM_PORTS ; 
 struct qca8k_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qca8k_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct mdio_device *mdiodev)
{
	struct qca8k_priv *priv = FUNC0(&mdiodev->dev);
	int i;

	for (i = 0; i < QCA8K_NUM_PORTS; i++)
		FUNC2(priv, i, 0);

	FUNC1(priv->ds);
}