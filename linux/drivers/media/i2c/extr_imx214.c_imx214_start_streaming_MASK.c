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
struct imx214_mode {int /*<<< orphan*/  reg_table; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct imx214 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  ctrls; TYPE_1__ fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  imx214_modes ; 
 int FUNC3 (struct imx214*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mode_table_common ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 struct imx214_mode* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  width ; 

__attribute__((used)) static int FUNC8(struct imx214 *imx214)
{
	const struct imx214_mode *mode;
	int ret;

	FUNC4(&imx214->mutex);
	ret = FUNC3(imx214, mode_table_common);
	if (ret < 0) {
		FUNC2(imx214->dev, "could not sent common table %d\n", ret);
		goto error;
	}

	mode = FUNC7(imx214_modes,
				FUNC0(imx214_modes), width, height,
				imx214->fmt.width, imx214->fmt.height);
	ret = FUNC3(imx214, mode->reg_table);
	if (ret < 0) {
		FUNC2(imx214->dev, "could not sent mode table %d\n", ret);
		goto error;
	}
	ret = FUNC1(&imx214->ctrls);
	if (ret < 0) {
		FUNC2(imx214->dev, "could not sync v4l2 controls\n");
		goto error;
	}
	ret = FUNC6(imx214->regmap, 0x100, 1);
	if (ret < 0) {
		FUNC2(imx214->dev, "could not sent start table %d\n", ret);
		goto error;
	}

	FUNC5(&imx214->mutex);
	return 0;

error:
	FUNC5(&imx214->mutex);
	return ret;
}