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
struct k3_priv {scalar_t__ ctrl_id; int /*<<< orphan*/ * reg; } ;
struct dw_mci {struct k3_priv* priv; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TIMING_MODE ; 
 struct k3_priv* FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct dw_mci *host)
{
	struct k3_priv *priv;

	priv = FUNC1(host->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->reg = FUNC3(host->dev->of_node,
					 "hisilicon,peripheral-syscon");
	if (FUNC0(priv->reg))
		priv->reg = NULL;

	priv->ctrl_id = FUNC2(host->dev->of_node, "mshc");
	if (priv->ctrl_id < 0)
		priv->ctrl_id = 0;

	if (priv->ctrl_id >= TIMING_MODE)
		return -EINVAL;

	host->priv = priv;
	return 0;
}