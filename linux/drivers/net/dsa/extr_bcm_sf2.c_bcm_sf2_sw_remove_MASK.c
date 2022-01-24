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
struct platform_device {int dummy; } ;
struct bcm_sf2_priv {TYPE_1__* dev; scalar_t__ wol_ports_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  ds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_sf2_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_sf2_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct bcm_sf2_priv* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct bcm_sf2_priv *priv = FUNC4(pdev);

	priv->wol_ports_mask = 0;
	/* Disable interrupts */
	FUNC1(priv);
	FUNC3(priv->dev->ds);
	FUNC0(priv->dev->ds);
	FUNC2(priv);

	return 0;
}