#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct dw_mci_exynos_priv_data {scalar_t__ ctrl_type; void* hs400_timing; scalar_t__ dqs_delay; void* ddr_timing; void* sdr_timing; scalar_t__ ciu_div; } ;
struct dw_mci {struct dw_mci_exynos_priv_data* priv; TYPE_2__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct TYPE_5__ {scalar_t__ ctrl_type; int /*<<< orphan*/  compatible; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ DW_MCI_TYPE_EXYNOS4210 ; 
 scalar_t__ DW_MCI_TYPE_EXYNOS4412 ; 
 int ENOMEM ; 
 scalar_t__ EXYNOS4210_FIXED_CIU_CLK_DIV ; 
 scalar_t__ EXYNOS4412_FIXED_CIU_CLK_DIV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HS400_FIXED_CIU_CLK_DIV ; 
 void* FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct dw_mci_exynos_priv_data* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* exynos_compat ; 
 scalar_t__ FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,scalar_t__*) ; 
 int FUNC6 (struct device_node*,char*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC7(struct dw_mci *host)
{
	struct dw_mci_exynos_priv_data *priv;
	struct device_node *np = host->dev->of_node;
	u32 timing[2];
	u32 div = 0;
	int idx;
	int ret;

	priv = FUNC3(host->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	for (idx = 0; idx < FUNC0(exynos_compat); idx++) {
		if (FUNC4(np, exynos_compat[idx].compatible))
			priv->ctrl_type = exynos_compat[idx].ctrl_type;
	}

	if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS4412)
		priv->ciu_div = EXYNOS4412_FIXED_CIU_CLK_DIV - 1;
	else if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS4210)
		priv->ciu_div = EXYNOS4210_FIXED_CIU_CLK_DIV - 1;
	else {
		FUNC5(np, "samsung,dw-mshc-ciu-div", &div);
		priv->ciu_div = div;
	}

	ret = FUNC6(np,
			"samsung,dw-mshc-sdr-timing", timing, 2);
	if (ret)
		return ret;

	priv->sdr_timing = FUNC1(timing[0], timing[1], div);

	ret = FUNC6(np,
			"samsung,dw-mshc-ddr-timing", timing, 2);
	if (ret)
		return ret;

	priv->ddr_timing = FUNC1(timing[0], timing[1], div);

	ret = FUNC6(np,
			"samsung,dw-mshc-hs400-timing", timing, 2);
	if (!ret && FUNC5(np,
				"samsung,read-strobe-delay", &priv->dqs_delay))
		FUNC2(host->dev,
			"read-strobe-delay is not found, assuming usage of default value\n");

	priv->hs400_timing = FUNC1(timing[0], timing[1],
						HS400_FIXED_CIU_CLK_DIV);
	host->priv = priv;
	return 0;
}