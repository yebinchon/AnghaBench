#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fsl_upm_nand {int mchip_count; int* rnb_gpio; int chip_delay; int wait_flags; int /*<<< orphan*/  last_ctrl; TYPE_1__* dev; int /*<<< orphan*/  io_base; int /*<<< orphan*/ * mchip_offsets; int /*<<< orphan*/  upm_cmd_offset; int /*<<< orphan*/  upm_addr_offset; int /*<<< orphan*/  upm; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FSL_UPM_WAIT_RUN_PATTERN ; 
 int FSL_UPM_WAIT_WRITE_BYTE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAND_CLE ; 
 int NAND_MAX_CHIPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 void* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct fsl_upm_nand*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct fsl_upm_nand*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fsl_upm_nand*) ; 
 struct fsl_upm_nand* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct resource*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *ofdev)
{
	struct fsl_upm_nand *fun;
	struct resource io_res;
	const __be32 *prop;
	int rnb_gpio;
	int ret;
	int size;
	int i;

	fun = FUNC12(sizeof(*fun), GFP_KERNEL);
	if (!fun)
		return -ENOMEM;

	ret = FUNC13(ofdev->dev.of_node, 0, &io_res);
	if (ret) {
		FUNC2(&ofdev->dev, "can't get IO base\n");
		goto err1;
	}

	ret = FUNC6(io_res.start, &fun->upm);
	if (ret) {
		FUNC2(&ofdev->dev, "can't find UPM\n");
		goto err1;
	}

	prop = FUNC15(ofdev->dev.of_node, "fsl,upm-addr-offset",
			       &size);
	if (!prop || size != sizeof(uint32_t)) {
		FUNC2(&ofdev->dev, "can't get UPM address offset\n");
		ret = -EINVAL;
		goto err1;
	}
	fun->upm_addr_offset = *prop;

	prop = FUNC15(ofdev->dev.of_node, "fsl,upm-cmd-offset", &size);
	if (!prop || size != sizeof(uint32_t)) {
		FUNC2(&ofdev->dev, "can't get UPM command offset\n");
		ret = -EINVAL;
		goto err1;
	}
	fun->upm_cmd_offset = *prop;

	prop = FUNC15(ofdev->dev.of_node,
			       "fsl,upm-addr-line-cs-offsets", &size);
	if (prop && (size / sizeof(uint32_t)) > 0) {
		fun->mchip_count = size / sizeof(uint32_t);
		if (fun->mchip_count >= NAND_MAX_CHIPS) {
			FUNC2(&ofdev->dev, "too much multiple chips\n");
			goto err1;
		}
		for (i = 0; i < fun->mchip_count; i++)
			fun->mchip_offsets[i] = FUNC0(prop[i]);
	} else {
		fun->mchip_count = 1;
	}

	for (i = 0; i < fun->mchip_count; i++) {
		fun->rnb_gpio[i] = -1;
		rnb_gpio = FUNC14(ofdev->dev.of_node, i);
		if (rnb_gpio >= 0) {
			ret = FUNC10(rnb_gpio, FUNC3(&ofdev->dev));
			if (ret) {
				FUNC2(&ofdev->dev,
					"can't request RNB gpio #%d\n", i);
				goto err2;
			}
			FUNC8(rnb_gpio);
			fun->rnb_gpio[i] = rnb_gpio;
		} else if (rnb_gpio == -EINVAL) {
			FUNC2(&ofdev->dev, "RNB gpio #%d is invalid\n", i);
			goto err2;
		}
	}

	prop = FUNC15(ofdev->dev.of_node, "chip-delay", NULL);
	if (prop)
		fun->chip_delay = FUNC1(prop);
	else
		fun->chip_delay = 50;

	prop = FUNC15(ofdev->dev.of_node, "fsl,upm-wait-flags", &size);
	if (prop && size == sizeof(uint32_t))
		fun->wait_flags = FUNC1(prop);
	else
		fun->wait_flags = FSL_UPM_WAIT_RUN_PATTERN |
				  FSL_UPM_WAIT_WRITE_BYTE;

	fun->io_base = FUNC5(&ofdev->dev, io_res.start,
					    FUNC16(&io_res));
	if (!fun->io_base) {
		ret = -ENOMEM;
		goto err2;
	}

	fun->dev = &ofdev->dev;
	fun->last_ctrl = NAND_CLE;

	ret = FUNC7(fun, ofdev->dev.of_node, &io_res);
	if (ret)
		goto err2;

	FUNC4(&ofdev->dev, fun);

	return 0;
err2:
	for (i = 0; i < fun->mchip_count; i++) {
		if (fun->rnb_gpio[i] < 0)
			break;
		FUNC9(fun->rnb_gpio[i]);
	}
err1:
	FUNC11(fun);

	return ret;
}