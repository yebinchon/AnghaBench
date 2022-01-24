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
struct stmmac_resources {scalar_t__ irq; int wol_irq; void* addr; int /*<<< orphan*/  mac; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  void plat_stmmacenet_data ;
struct dwc_eth_dwmac_data {int /*<<< orphan*/  (* remove ) (struct platform_device*) ;void* (* probe ) (struct platform_device*,void*,struct stmmac_resources*) ;} ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct platform_device*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct stmmac_resources*,int /*<<< orphan*/ ,int) ; 
 struct dwc_eth_dwmac_data* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,void*,struct stmmac_resources*) ; 
 void* FUNC9 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,void*) ; 
 void* FUNC11 (struct platform_device*,void*,struct stmmac_resources*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	const struct dwc_eth_dwmac_data *data;
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	void *priv;
	int ret;

	data = FUNC6(&pdev->dev);

	FUNC5(&stmmac_res, 0, sizeof(struct stmmac_resources));

	/**
	 * Since stmmac_platform supports name IRQ only, basic platform
	 * resource initialization is done in the glue logic.
	 */
	stmmac_res.irq = FUNC7(pdev, 0);
	if (stmmac_res.irq < 0)
		return stmmac_res.irq;
	stmmac_res.wol_irq = stmmac_res.irq;

	stmmac_res.addr = FUNC3(pdev, 0);
	if (FUNC0(stmmac_res.addr))
		return FUNC1(stmmac_res.addr);

	plat_dat = FUNC9(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	priv = data->probe(pdev, plat_dat, &stmmac_res);
	if (FUNC0(priv)) {
		ret = FUNC1(priv);

		if (ret != -EPROBE_DEFER)
			FUNC2(&pdev->dev, "failed to probe subdriver: %d\n",
				ret);

		goto remove_config;
	}

	ret = FUNC4(pdev, plat_dat);
	if (ret)
		goto remove;

	ret = FUNC8(&pdev->dev, plat_dat, &stmmac_res);
	if (ret)
		goto remove;

	return ret;

remove:
	data->remove(pdev);
remove_config:
	FUNC10(pdev, plat_dat);

	return ret;
}