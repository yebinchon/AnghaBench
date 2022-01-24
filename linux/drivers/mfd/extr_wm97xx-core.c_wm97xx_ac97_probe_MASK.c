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
struct wm97xx_platform_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/ * batt_pdata; int /*<<< orphan*/  ac97; } ;
struct wm97xx_priv {int /*<<< orphan*/  ac97; int /*<<< orphan*/  dev; struct wm97xx_platform_data codec_pdata; } ;
struct wm97xx_pdata {int /*<<< orphan*/ * batt_pdata; } ;
struct regmap_config {int dummy; } ;
struct mfd_cell {int pdata_size; struct wm97xx_platform_data* platform_data; } ;
struct ac97_codec_device {int /*<<< orphan*/  vendor_id; } ;

/* Variables and functions */
 int FUNC0 (struct mfd_cell*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  WM9705_VENDOR_ID 130 
#define  WM9712_VENDOR_ID 129 
#define  WM9713_VENDOR_ID 128 
 int /*<<< orphan*/  FUNC3 (struct ac97_codec_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ac97_codec_device*,struct wm97xx_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct wm97xx_priv* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mfd_cell*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct regmap_config const*) ; 
 struct wm97xx_pdata* FUNC9 (struct ac97_codec_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ac97_codec_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct mfd_cell* wm9705_cells ; 
 struct regmap_config wm9705_regmap_config ; 
 struct mfd_cell* wm9712_cells ; 
 struct regmap_config wm9712_regmap_config ; 
 struct mfd_cell* wm9713_cells ; 
 struct regmap_config wm9713_regmap_config ; 

__attribute__((used)) static int FUNC12(struct ac97_codec_device *adev)
{
	struct wm97xx_priv *wm97xx;
	const struct regmap_config *config;
	struct wm97xx_platform_data *codec_pdata;
	struct mfd_cell *cells;
	int ret = -ENODEV, nb_cells, i;
	struct wm97xx_pdata *pdata = FUNC9(adev);

	wm97xx = FUNC6(FUNC3(adev),
			      sizeof(*wm97xx), GFP_KERNEL);
	if (!wm97xx)
		return -ENOMEM;

	wm97xx->dev = FUNC3(adev);
	wm97xx->ac97 = FUNC10(adev);
	if (FUNC1(wm97xx->ac97))
		return FUNC2(wm97xx->ac97);


	FUNC4(adev, wm97xx);
	FUNC5(wm97xx->dev, "wm97xx core found, id=0x%x\n",
		 adev->vendor_id);

	codec_pdata = &wm97xx->codec_pdata;
	codec_pdata->ac97 = wm97xx->ac97;
	codec_pdata->batt_pdata = pdata ? pdata->batt_pdata : NULL;

	switch (adev->vendor_id) {
	case WM9705_VENDOR_ID:
		config = &wm9705_regmap_config;
		cells = wm9705_cells;
		nb_cells = FUNC0(wm9705_cells);
		break;
	case WM9712_VENDOR_ID:
		config = &wm9712_regmap_config;
		cells = wm9712_cells;
		nb_cells = FUNC0(wm9712_cells);
		break;
	case WM9713_VENDOR_ID:
		config = &wm9713_regmap_config;
		cells = wm9713_cells;
		nb_cells = FUNC0(wm9713_cells);
		break;
	default:
		goto err_free_compat;
	}

	for (i = 0; i < nb_cells; i++) {
		cells[i].platform_data = codec_pdata;
		cells[i].pdata_size = sizeof(*codec_pdata);
	}

	codec_pdata->regmap = FUNC8(wm97xx->ac97, config);
	if (FUNC1(codec_pdata->regmap)) {
		ret = FUNC2(codec_pdata->regmap);
		goto err_free_compat;
	}

	ret = FUNC7(wm97xx->dev, PLATFORM_DEVID_NONE,
				   cells, nb_cells, NULL, 0, NULL);
	if (ret)
		goto err_free_compat;

	return ret;

err_free_compat:
	FUNC11(wm97xx->ac97);
	return ret;
}