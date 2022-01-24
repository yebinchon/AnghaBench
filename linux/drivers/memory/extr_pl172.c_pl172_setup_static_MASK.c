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
typedef  int u32 ;
struct pl172_data {scalar_t__ base; } ;
struct device_node {int dummy; } ;
struct amba_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int MPMC_STATIC_CFG_B ; 
 int MPMC_STATIC_CFG_EW ; 
 int MPMC_STATIC_CFG_MW_16BIT ; 
 int MPMC_STATIC_CFG_MW_32BIT ; 
 int MPMC_STATIC_CFG_MW_8BIT ; 
 int MPMC_STATIC_CFG_P ; 
 int MPMC_STATIC_CFG_PB ; 
 int MPMC_STATIC_CFG_PC ; 
 int MPMC_STATIC_CFG_PM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MPMC_STATIC_WAIT_OEN_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MPMC_STATIC_WAIT_PAGE_MAX ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  MPMC_STATIC_WAIT_RD_MAX ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  MPMC_STATIC_WAIT_TURN_MAX ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  MPMC_STATIC_WAIT_WEN_MAX ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  MPMC_STATIC_WAIT_WR_MAX ; 
 struct pl172_data* FUNC7 (struct amba_device*) ; 
 int FUNC8 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC11 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*,int*) ; 
 int FUNC13 (struct amba_device*,struct device_node*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct amba_device *adev,
			      struct device_node *np, u32 cs)
{
	struct pl172_data *pl172 = FUNC7(adev);
	u32 cfg;
	int ret;

	/* MPMC static memory configuration */
	if (!FUNC12(np, "mpmc,memory-width", &cfg)) {
		if (cfg == 8) {
			cfg = MPMC_STATIC_CFG_MW_8BIT;
		} else if (cfg == 16) {
			cfg = MPMC_STATIC_CFG_MW_16BIT;
		} else if (cfg == 32) {
			cfg = MPMC_STATIC_CFG_MW_32BIT;
		} else {
			FUNC10(&adev->dev, "invalid memory width cs%u\n", cs);
			return -EINVAL;
		}
	} else {
		FUNC10(&adev->dev, "memory-width property required\n");
		return -EINVAL;
	}

	if (FUNC11(np, "mpmc,async-page-mode"))
		cfg |= MPMC_STATIC_CFG_PM;

	if (FUNC11(np, "mpmc,cs-active-high"))
		cfg |= MPMC_STATIC_CFG_PC;

	if (FUNC11(np, "mpmc,byte-lane-low"))
		cfg |= MPMC_STATIC_CFG_PB;

	if (FUNC11(np, "mpmc,extended-wait"))
		cfg |= MPMC_STATIC_CFG_EW;

	if (FUNC8(adev) == 0x172 &&
	    FUNC11(np, "mpmc,buffer-enable"))
		cfg |= MPMC_STATIC_CFG_B;

	if (FUNC11(np, "mpmc,write-protect"))
		cfg |= MPMC_STATIC_CFG_P;

	FUNC14(cfg, pl172->base + FUNC0(cs));
	FUNC9(&adev->dev, "mpmc static config cs%u: 0x%08x\n", cs, cfg);

	/* MPMC static memory timing */
	ret = FUNC13(adev, np, "mpmc,write-enable-delay",
				FUNC5(cs),
				MPMC_STATIC_WAIT_WEN_MAX, 1);
	if (ret)
		goto fail;

	ret = FUNC13(adev, np, "mpmc,output-enable-delay",
				FUNC1(cs),
				MPMC_STATIC_WAIT_OEN_MAX, 0);
	if (ret)
		goto fail;

	ret = FUNC13(adev, np, "mpmc,read-access-delay",
				FUNC3(cs),
				MPMC_STATIC_WAIT_RD_MAX, 1);
	if (ret)
		goto fail;

	ret = FUNC13(adev, np, "mpmc,page-mode-read-delay",
				FUNC2(cs),
				MPMC_STATIC_WAIT_PAGE_MAX, 1);
	if (ret)
		goto fail;

	ret = FUNC13(adev, np, "mpmc,write-access-delay",
				FUNC6(cs),
				MPMC_STATIC_WAIT_WR_MAX, 2);
	if (ret)
		goto fail;

	ret = FUNC13(adev, np, "mpmc,turn-round-delay",
				FUNC4(cs),
				MPMC_STATIC_WAIT_TURN_MAX, 1);
	if (ret)
		goto fail;

	return 0;
fail:
	FUNC10(&adev->dev, "failed to configure cs%u\n", cs);
	return ret;
}