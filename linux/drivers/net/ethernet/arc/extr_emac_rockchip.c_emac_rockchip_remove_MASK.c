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
struct rockchip_priv_data {int /*<<< orphan*/  macclk; TYPE_1__* soc_data; scalar_t__ regulator; int /*<<< orphan*/  refclk; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ need_div_macclk; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct rockchip_priv_data* FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC4(pdev);
	struct rockchip_priv_data *priv = FUNC3(ndev);
	int err;

	err = FUNC0(ndev);

	FUNC1(priv->refclk);

	if (priv->regulator)
		FUNC5(priv->regulator);

	if (priv->soc_data->need_div_macclk)
		FUNC1(priv->macclk);

	FUNC2(ndev);
	return err;
}