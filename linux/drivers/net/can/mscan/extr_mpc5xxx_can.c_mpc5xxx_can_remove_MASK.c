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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {struct mpc5xxx_can_data* data; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
struct mscan_priv {int /*<<< orphan*/  reg_base; } ;
struct mpc5xxx_can_data {int /*<<< orphan*/  (* put_clock ) (struct platform_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpc5xxx_can_table ; 
 struct mscan_priv* FUNC3 (struct net_device*) ; 
 struct of_device_id* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *ofdev)
{
	const struct of_device_id *match;
	const struct mpc5xxx_can_data *data;
	struct net_device *dev = FUNC5(ofdev);
	struct mscan_priv *priv = FUNC3(dev);

	match = FUNC4(mpc5xxx_can_table, &ofdev->dev);
	data = match ? match->data : NULL;

	FUNC7(dev);
	if (data && data->put_clock)
		data->put_clock(ofdev);
	FUNC1(priv->reg_base);
	FUNC2(dev->irq);
	FUNC0(dev);

	return 0;
}