#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mfd_cell {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  reset; } ;
struct madera {int num_core_supplies; int type; unsigned int rev; int /*<<< orphan*/  dcvdd; TYPE_1__* core_supplies; struct device* dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  type_name; TYPE_3__ pdata; int /*<<< orphan*/  regmap_32bit; int /*<<< orphan*/  dapm_ptr_lock; int /*<<< orphan*/  notifier; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct mfd_cell supply; } ;

/* Variables and functions */
 int FUNC0 (struct mfd_cell const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CONFIG_MFD_CS47L15 ; 
 int /*<<< orphan*/  CONFIG_MFD_CS47L35 ; 
 int /*<<< orphan*/  CONFIG_MFD_CS47L85 ; 
 int /*<<< orphan*/  CONFIG_MFD_CS47L90 ; 
 int /*<<< orphan*/  CONFIG_MFD_CS47L92 ; 
#define  CS42L92 141 
#define  CS47L15 140 
#define  CS47L15_SILICON_ID 139 
#define  CS47L35 138 
#define  CS47L35_SILICON_ID 137 
#define  CS47L85 136 
#define  CS47L85_SILICON_ID 135 
#define  CS47L90 134 
#define  CS47L90_SILICON_ID 133 
#define  CS47L91 132 
#define  CS47L92 131 
#define  CS47L92_SILICON_ID 130 
#define  CS47L93 129 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int MADERA_32KZ_MCLK2 ; 
 int MADERA_CLK_32K_ENA ; 
 int MADERA_CLK_32K_ENA_MASK ; 
 int MADERA_CLK_32K_SRC_MASK ; 
 int /*<<< orphan*/  MADERA_CLOCK_32K_1 ; 
 int /*<<< orphan*/  MADERA_HARDWARE_REVISION ; 
 unsigned int MADERA_HW_REVISION_MASK ; 
 int /*<<< orphan*/  MADERA_SOFTWARE_RESET ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  WM1840 128 
 struct mfd_cell const* cs47l15_devs ; 
 int FUNC5 (struct madera*) ; 
 struct mfd_cell const* cs47l35_devs ; 
 int FUNC6 (struct madera*) ; 
 struct mfd_cell const* cs47l85_devs ; 
 int FUNC7 (struct madera*) ; 
 struct mfd_cell const* cs47l90_devs ; 
 int FUNC8 (struct madera*) ; 
 struct mfd_cell const* cs47l92_devs ; 
 int FUNC9 (struct madera*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,int,...) ; 
 scalar_t__ FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,struct madera*) ; 
 int FUNC14 (struct device*,int,TYPE_1__*) ; 
 struct mfd_cell const* madera_core_supplies ; 
 int /*<<< orphan*/  FUNC15 (struct madera*) ; 
 int /*<<< orphan*/  FUNC16 (struct madera*) ; 
 int FUNC17 (struct madera*) ; 
 struct mfd_cell const* madera_ldo1_devs ; 
 int /*<<< orphan*/  FUNC18 (struct madera*) ; 
 int FUNC19 (struct madera*) ; 
 int FUNC20 (struct madera*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,scalar_t__,int) ; 
 int FUNC22 (struct device*,int /*<<< orphan*/ ,struct mfd_cell const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct device*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int) ; 
 int FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC33 (int,TYPE_1__*) ; 
 int FUNC34 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 

int FUNC39(struct madera *madera)
{
	struct device *dev = madera->dev;
	unsigned int hwid;
	int (*patch_fn)(struct madera *) = NULL;
	const struct mfd_cell *mfd_devs;
	int n_devs = 0;
	int i, ret;

	FUNC13(madera->dev, madera);
	FUNC1(&madera->notifier);
	FUNC24(&madera->dapm_ptr_lock);

	FUNC18(madera);

	/*
	 * We need writable hw config info that all children can share.
	 * Simplest to take one shared copy of pdata struct.
	 */
	if (FUNC11(madera->dev)) {
		FUNC21(&madera->pdata, FUNC11(madera->dev),
		       sizeof(madera->pdata));
	}

	ret = FUNC17(madera);
	if (ret)
		return ret;

	FUNC30(madera->regmap, true);
	FUNC30(madera->regmap_32bit, true);

	for (i = 0; i < FUNC0(madera_core_supplies); i++)
		madera->core_supplies[i].supply = madera_core_supplies[i];

	madera->num_core_supplies = FUNC0(madera_core_supplies);

	/*
	 * On some codecs DCVDD could be supplied by the internal LDO1.
	 * For those we must add the LDO1 driver before requesting DCVDD
	 * No devm_ because we need to control shutdown order of children.
	 */
	switch (madera->type) {
	case CS47L15:
	case CS47L35:
	case CS47L90:
	case CS47L91:
	case CS42L92:
	case CS47L92:
	case CS47L93:
		break;
	case CS47L85:
	case WM1840:
		ret = FUNC22(madera->dev, PLATFORM_DEVID_NONE,
				      madera_ldo1_devs,
				      FUNC0(madera_ldo1_devs),
				      NULL, 0, NULL);
		if (ret) {
			FUNC10(dev, "Failed to add LDO1 child: %d\n", ret);
			return ret;
		}
		break;
	default:
		/* No point continuing if the type is unknown */
		FUNC10(madera->dev, "Unknown device type %d\n", madera->type);
		return -ENODEV;
	}

	ret = FUNC14(dev, madera->num_core_supplies,
				      madera->core_supplies);
	if (ret) {
		FUNC10(dev, "Failed to request core supplies: %d\n", ret);
		goto err_devs;
	}

	/*
	 * Don't use devres here. If the regulator is one of our children it
	 * will already have been removed before devres cleanup on this mfd
	 * driver tries to call put() on it. We need control of shutdown order.
	 */
	madera->dcvdd = FUNC37(madera->dev, "DCVDD");
	if (FUNC3(madera->dcvdd)) {
		ret = FUNC4(madera->dcvdd);
		FUNC10(dev, "Failed to request DCVDD: %d\n", ret);
		goto err_devs;
	}

	ret = FUNC34(madera->num_core_supplies,
				    madera->core_supplies);
	if (ret) {
		FUNC10(dev, "Failed to enable core supplies: %d\n", ret);
		goto err_dcvdd;
	}

	ret = FUNC36(madera->dcvdd);
	if (ret) {
		FUNC10(dev, "Failed to enable DCVDD: %d\n", ret);
		goto err_enable;
	}

	FUNC15(madera);

	FUNC30(madera->regmap, false);
	FUNC30(madera->regmap_32bit, false);

	/*
	 * Now we can power up and verify that this is a chip we know about
	 * before we start doing any writes to its registers.
	 */
	ret = FUNC31(madera->regmap, MADERA_SOFTWARE_RESET, &hwid);
	if (ret) {
		FUNC10(dev, "Failed to read ID register: %d\n", ret);
		goto err_reset;
	}

	switch (hwid) {
	case CS47L15_SILICON_ID:
		if (FUNC2(CONFIG_MFD_CS47L15)) {
			switch (madera->type) {
			case CS47L15:
				patch_fn = &cs47l15_patch;
				mfd_devs = cs47l15_devs;
				n_devs = FUNC0(cs47l15_devs);
				break;
			default:
				break;
			}
		}
		break;
	case CS47L35_SILICON_ID:
		if (FUNC2(CONFIG_MFD_CS47L35)) {
			switch (madera->type) {
			case CS47L35:
				patch_fn = cs47l35_patch;
				mfd_devs = cs47l35_devs;
				n_devs = FUNC0(cs47l35_devs);
				break;
			default:
				break;
			}
		}
		break;
	case CS47L85_SILICON_ID:
		if (FUNC2(CONFIG_MFD_CS47L85)) {
			switch (madera->type) {
			case CS47L85:
			case WM1840:
				patch_fn = cs47l85_patch;
				mfd_devs = cs47l85_devs;
				n_devs = FUNC0(cs47l85_devs);
				break;
			default:
				break;
			}
		}
		break;
	case CS47L90_SILICON_ID:
		if (FUNC2(CONFIG_MFD_CS47L90)) {
			switch (madera->type) {
			case CS47L90:
			case CS47L91:
				patch_fn = cs47l90_patch;
				mfd_devs = cs47l90_devs;
				n_devs = FUNC0(cs47l90_devs);
				break;
			default:
				break;
			}
		}
		break;
	case CS47L92_SILICON_ID:
		if (FUNC2(CONFIG_MFD_CS47L92)) {
			switch (madera->type) {
			case CS42L92:
			case CS47L92:
			case CS47L93:
				patch_fn = cs47l92_patch;
				mfd_devs = cs47l92_devs;
				n_devs = FUNC0(cs47l92_devs);
				break;
			default:
				break;
			}
		}
		break;
	default:
		FUNC10(madera->dev, "Unknown device ID: %x\n", hwid);
		ret = -EINVAL;
		goto err_reset;
	}

	if (!n_devs) {
		FUNC10(madera->dev, "Device ID 0x%x not a %s\n", hwid,
			madera->type_name);
		ret = -ENODEV;
		goto err_reset;
	}

	/*
	 * It looks like a device we support. If we don't have a hard reset
	 * we can now attempt a soft reset.
	 */
	if (!madera->pdata.reset) {
		ret = FUNC19(madera);
		if (ret)
			goto err_reset;
	}

	ret = FUNC20(madera);
	if (ret) {
		FUNC10(madera->dev, "Device failed initial boot: %d\n", ret);
		goto err_reset;
	}

	ret = FUNC31(madera->regmap, MADERA_HARDWARE_REVISION,
			  &madera->rev);
	if (ret) {
		FUNC10(dev, "Failed to read revision register: %d\n", ret);
		goto err_reset;
	}
	madera->rev &= MADERA_HW_REVISION_MASK;

	FUNC12(dev, "%s silicon revision %d\n", madera->type_name,
		 madera->rev);

	/* Apply hardware patch */
	if (patch_fn) {
		ret = patch_fn(madera);
		if (ret) {
			FUNC10(madera->dev, "Failed to apply patch %d\n", ret);
			goto err_reset;
		}
	}

	/* Init 32k clock sourced from MCLK2 */
	ret = FUNC32(madera->regmap,
			MADERA_CLOCK_32K_1,
			MADERA_CLK_32K_ENA_MASK | MADERA_CLK_32K_SRC_MASK,
			MADERA_CLK_32K_ENA | MADERA_32KZ_MCLK2);
	if (ret) {
		FUNC10(madera->dev, "Failed to init 32k clock: %d\n", ret);
		goto err_reset;
	}

	FUNC27(madera->dev);
	FUNC26(madera->dev);
	FUNC28(madera->dev, 100);
	FUNC29(madera->dev);

	/* No devm_ because we need to control shutdown order of children */
	ret = FUNC22(madera->dev, PLATFORM_DEVID_NONE,
			      mfd_devs, n_devs,
			      NULL, 0, NULL);
	if (ret) {
		FUNC10(madera->dev, "Failed to add subdevices: %d\n", ret);
		goto err_pm_runtime;
	}

	return 0;

err_pm_runtime:
	FUNC25(madera->dev);
err_reset:
	FUNC16(madera);
	FUNC35(madera->dcvdd);
err_enable:
	FUNC33(madera->num_core_supplies,
			       madera->core_supplies);
err_dcvdd:
	FUNC38(madera->dcvdd);
err_devs:
	FUNC23(dev);

	return ret;
}