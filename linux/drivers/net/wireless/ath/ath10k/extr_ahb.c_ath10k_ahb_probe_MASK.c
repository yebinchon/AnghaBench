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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bus_ops; } ;
struct ath10k_pci {TYPE_1__ ce; int /*<<< orphan*/  targ_cpu_to_ce_addr; struct ath10k* ar; int /*<<< orphan*/  mem_len; int /*<<< orphan*/  mem; } ;
struct ath10k_bus_params {int chip_id; int /*<<< orphan*/  dev_type; } ;
struct ath10k_ahb {int /*<<< orphan*/  mem_len; int /*<<< orphan*/  mem; struct platform_device* pdev; } ;
struct ath10k {TYPE_1__* ce_priv; scalar_t__ dev_id; } ;
typedef  enum ath10k_hw_rev { ____Placeholder_ath10k_hw_rev } ath10k_hw_rev ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_BUS_AHB ; 
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  ATH10K_DEV_TYPE_LL ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SOC_CHIP_ID_ADDRESS ; 
 int /*<<< orphan*/  ath10k_ahb_bus_ops ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  ath10k_ahb_hif_ops ; 
 int /*<<< orphan*/  ath10k_ahb_of_match ; 
 int FUNC2 (struct ath10k*) ; 
 struct ath10k_ahb* FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  ath10k_ahb_qca4019_targ_cpu_to_ce_addr ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*) ; 
 int FUNC7 (struct ath10k*) ; 
 int FUNC8 (struct ath10k*,int /*<<< orphan*/ ) ; 
 struct ath10k* FUNC9 (size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ath10k*) ; 
 int FUNC11 (struct ath10k*,struct ath10k_bus_params*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC16 (struct ath10k*) ; 
 struct ath10k_pci* FUNC17 (struct ath10k*) ; 
 int FUNC18 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 struct of_device_id* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct ath10k*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct ath10k *ar;
	struct ath10k_ahb *ar_ahb;
	struct ath10k_pci *ar_pci;
	const struct of_device_id *of_id;
	enum ath10k_hw_rev hw_rev;
	size_t size;
	int ret;
	struct ath10k_bus_params bus_params = {};

	of_id = FUNC20(ath10k_ahb_of_match, &pdev->dev);
	if (!of_id) {
		FUNC19(&pdev->dev, "failed to find matching device tree id\n");
		return -EINVAL;
	}

	hw_rev = (enum ath10k_hw_rev)of_id->data;

	size = sizeof(*ar_pci) + sizeof(*ar_ahb);
	ar = FUNC9(size, &pdev->dev, ATH10K_BUS_AHB,
				hw_rev, &ath10k_ahb_hif_ops);
	if (!ar) {
		FUNC19(&pdev->dev, "failed to allocate core\n");
		return -ENOMEM;
	}

	FUNC12(ar, ATH10K_DBG_BOOT, "ahb probe\n");

	ar_pci = FUNC17(ar);
	ar_ahb = FUNC3(ar);

	ar_ahb->pdev = pdev;
	FUNC21(pdev, ar);

	ret = FUNC7(ar);
	if (ret)
		goto err_core_destroy;

	ar->dev_id = 0;
	ar_pci->mem = ar_ahb->mem;
	ar_pci->mem_len = ar_ahb->mem_len;
	ar_pci->ar = ar;
	ar_pci->ce.bus_ops = &ath10k_ahb_bus_ops;
	ar_pci->targ_cpu_to_ce_addr = ath10k_ahb_qca4019_targ_cpu_to_ce_addr;
	ar->ce_priv = &ar_pci->ce;

	ret = FUNC18(ar);
	if (ret) {
		FUNC13(ar, "failed to setup resource: %d\n", ret);
		goto err_resource_deinit;
	}

	FUNC16(ar);

	ret = FUNC5(ar);
	if (ret)
		goto err_free_pipes;

	ret = FUNC2(ar);
	if (ret)
		goto err_free_irq;

	FUNC14(ar);

	bus_params.dev_type = ATH10K_DEV_TYPE_LL;
	bus_params.chip_id = FUNC8(ar, SOC_CHIP_ID_ADDRESS);
	if (bus_params.chip_id == 0xffffffff) {
		FUNC13(ar, "failed to get chip id\n");
		ret = -ENODEV;
		goto err_halt_device;
	}

	ret = FUNC11(ar, &bus_params);
	if (ret) {
		FUNC13(ar, "failed to register driver core: %d\n", ret);
		goto err_halt_device;
	}

	return 0;

err_halt_device:
	FUNC1(ar);
	FUNC0(ar);

err_free_irq:
	FUNC4(ar);

err_free_pipes:
	FUNC15(ar);

err_resource_deinit:
	FUNC6(ar);

err_core_destroy:
	FUNC10(ar);
	FUNC21(pdev, NULL);

	return ret;
}