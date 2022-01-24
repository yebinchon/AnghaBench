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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {struct device_node* of_node; struct b53_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct b53_srab_priv {int /*<<< orphan*/  regs; } ;
struct b53_platform_data {scalar_t__ chip_id; } ;
struct b53_device {struct b53_platform_data* pdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  b53_srab_of_match ; 
 int /*<<< orphan*/  b53_srab_ops ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 struct b53_device* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,struct b53_srab_priv*) ; 
 int FUNC4 (struct b53_device*) ; 
 void* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC7 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct b53_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct b53_platform_data *pdata = pdev->dev.platform_data;
	struct device_node *dn = pdev->dev.of_node;
	const struct of_device_id *of_id = NULL;
	struct b53_srab_priv *priv;
	struct b53_device *dev;

	if (dn)
		of_id = FUNC7(b53_srab_of_match, dn);

	if (of_id) {
		pdata = FUNC5(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
		if (!pdata)
			return -ENOMEM;

		pdata->chip_id = (u32)(unsigned long)of_id->data;
	}

	priv = FUNC5(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->regs = FUNC6(pdev, 0);
	if (FUNC0(priv->regs))
		return -ENOMEM;

	dev = FUNC3(&pdev->dev, &b53_srab_ops, priv);
	if (!dev)
		return -ENOMEM;

	if (pdata)
		dev->pdata = pdata;

	FUNC8(pdev, dev);

	FUNC2(pdev);
	FUNC1(pdev);

	return FUNC4(dev);
}