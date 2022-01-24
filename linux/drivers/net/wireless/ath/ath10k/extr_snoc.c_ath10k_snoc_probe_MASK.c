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
typedef  size_t u32 ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {struct ath10k_snoc_drv_priv* data; } ;
struct ath10k_snoc_drv_priv {size_t msa_size; int /*<<< orphan*/  hw_rev; int /*<<< orphan*/  dma_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bus_ops; } ;
struct ath10k_snoc {int /*<<< orphan*/ * clk; int /*<<< orphan*/ * vreg; TYPE_1__ ce; struct ath10k* ar; struct platform_device* dev; } ;
struct ath10k {TYPE_1__* ce_priv; } ;

/* Variables and functions */
 size_t FUNC0 (void*) ; 
 int /*<<< orphan*/  ATH10K_BUS_SNOC ; 
 int /*<<< orphan*/  ATH10K_DBG_SNOC ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ath10k* FUNC1 (int,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 
 int FUNC5 (struct ath10k*,struct device*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ath10k*,struct device*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ath10k*) ; 
 int FUNC8 (struct ath10k*,size_t) ; 
 int /*<<< orphan*/  ath10k_snoc_bus_ops ; 
 int /*<<< orphan*/  ath10k_snoc_dt_match ; 
 int /*<<< orphan*/  FUNC9 (struct ath10k*) ; 
 int /*<<< orphan*/  ath10k_snoc_hif_ops ; 
 struct ath10k_snoc* FUNC10 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath10k*) ; 
 int FUNC12 (struct ath10k*) ; 
 int FUNC13 (struct ath10k*) ; 
 int FUNC14 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath10k*,char*,int) ; 
 void* clk_cfg ; 
 int /*<<< orphan*/  FUNC16 (struct device*,char*,...) ; 
 int FUNC17 (struct device*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC18 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct ath10k*) ; 
 void* vreg_cfg ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	const struct ath10k_snoc_drv_priv *drv_data;
	const struct of_device_id *of_id;
	struct ath10k_snoc *ar_snoc;
	struct device *dev;
	struct ath10k *ar;
	u32 msa_size;
	int ret;
	u32 i;

	of_id = FUNC18(ath10k_snoc_dt_match, &pdev->dev);
	if (!of_id) {
		FUNC16(&pdev->dev, "failed to find matching device tree id\n");
		return -EINVAL;
	}

	drv_data = of_id->data;
	dev = &pdev->dev;

	ret = FUNC17(dev, drv_data->dma_mask);
	if (ret) {
		FUNC16(dev, "failed to set dma mask: %d", ret);
		return ret;
	}

	ar = FUNC1(sizeof(*ar_snoc), dev, ATH10K_BUS_SNOC,
				drv_data->hw_rev, &ath10k_snoc_hif_ops);
	if (!ar) {
		FUNC16(dev, "failed to allocate core\n");
		return -ENOMEM;
	}

	ar_snoc = FUNC10(ar);
	ar_snoc->dev = pdev;
	FUNC19(pdev, ar);
	ar_snoc->ar = ar;
	ar_snoc->ce.bus_ops = &ath10k_snoc_bus_ops;
	ar->ce_priv = &ar_snoc->ce;
	msa_size = drv_data->msa_size;

	ret = FUNC13(ar);
	if (ret) {
		FUNC15(ar, "failed to initialize resource: %d\n", ret);
		goto err_core_destroy;
	}

	ret = FUNC14(ar);
	if (ret) {
		FUNC15(ar, "failed to setup resource: %d\n", ret);
		goto err_core_destroy;
	}
	ret = FUNC12(ar);
	if (ret) {
		FUNC15(ar, "failed to request irqs: %d\n", ret);
		goto err_release_resource;
	}

	ar_snoc->vreg = vreg_cfg;
	for (i = 0; i < FUNC0(vreg_cfg); i++) {
		ret = FUNC6(ar, dev, &ar_snoc->vreg[i]);
		if (ret)
			goto err_free_irq;
	}

	ar_snoc->clk = clk_cfg;
	for (i = 0; i < FUNC0(clk_cfg); i++) {
		ret = FUNC5(ar, dev, &ar_snoc->clk[i]);
		if (ret)
			goto err_free_irq;
	}

	ret = FUNC7(ar);
	if (ret) {
		FUNC4(ar, "failed to power on device: %d\n", ret);
		goto err_free_irq;
	}

	ret = FUNC8(ar, msa_size);
	if (ret) {
		FUNC15(ar, "failed to register wlfw qmi client: %d\n", ret);
		goto err_core_destroy;
	}

	FUNC3(ar, ATH10K_DBG_SNOC, "snoc probe\n");

	return 0;

err_free_irq:
	FUNC9(ar);

err_release_resource:
	FUNC11(ar);

err_core_destroy:
	FUNC2(ar);

	return ret;
}