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
struct mwl8k_priv {TYPE_1__* pdev; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  mwl8k_fw_state_machine ; 
 int /*<<< orphan*/  FUNC0 (struct firmware const**) ; 
 int FUNC1 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mwl8k_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mwl8k_priv *priv,
			    const char *fname, const struct firmware **fw,
			    bool nowait)
{
	/* release current image */
	if (*fw != NULL)
		FUNC0(fw);

	if (nowait)
		return FUNC2(THIS_MODULE, 1, fname,
					       &priv->pdev->dev, GFP_KERNEL,
					       priv, mwl8k_fw_state_machine);
	else
		return FUNC1(fw, fname, &priv->pdev->dev);
}