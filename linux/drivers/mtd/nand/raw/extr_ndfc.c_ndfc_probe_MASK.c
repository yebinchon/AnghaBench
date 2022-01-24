#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ndfc_controller {size_t chip_select; scalar_t__ ndfcbase; struct platform_device* ofdev; int /*<<< orphan*/  ndfc_control; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int NDFC_BCFG0 ; 
 scalar_t__ NDFC_CCR ; 
 size_t FUNC0 (size_t) ; 
 size_t NDFC_MAX_CS ; 
 size_t FUNC1 (int /*<<< orphan*/  const) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct ndfc_controller*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ndfc_controller*,int /*<<< orphan*/ ) ; 
 struct ndfc_controller* ndfc_ctrl ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,size_t) ; 

__attribute__((used)) static int FUNC11(struct platform_device *ofdev)
{
	struct ndfc_controller *ndfc;
	const __be32 *reg;
	u32 ccr;
	u32 cs;
	int err, len;

	/* Read the reg property to get the chip select */
	reg = FUNC8(ofdev->dev.of_node, "reg", &len);
	if (reg == NULL || len != 12) {
		FUNC3(&ofdev->dev, "unable read reg property (%d)\n", len);
		return -ENOENT;
	}

	cs = FUNC1(reg[0]);
	if (cs >= NDFC_MAX_CS) {
		FUNC3(&ofdev->dev, "invalid CS number (%d)\n", cs);
		return -EINVAL;
	}

	ndfc = &ndfc_ctrl[cs];
	ndfc->chip_select = cs;

	FUNC6(&ndfc->ndfc_control);
	ndfc->ofdev = ofdev;
	FUNC4(&ofdev->dev, ndfc);

	ndfc->ndfcbase = FUNC9(ofdev->dev.of_node, 0);
	if (!ndfc->ndfcbase) {
		FUNC3(&ofdev->dev, "failed to get memory\n");
		return -EIO;
	}

	ccr = FUNC0(ndfc->chip_select);

	/* It is ok if ccr does not exist - just default to 0 */
	reg = FUNC8(ofdev->dev.of_node, "ccr", NULL);
	if (reg)
		ccr |= FUNC2(reg);

	FUNC10(ndfc->ndfcbase + NDFC_CCR, ccr);

	/* Set the bank settings if given */
	reg = FUNC8(ofdev->dev.of_node, "bank-settings", NULL);
	if (reg) {
		int offset = NDFC_BCFG0 + (ndfc->chip_select << 2);
		FUNC10(ndfc->ndfcbase + offset, FUNC2(reg));
	}

	err = FUNC7(ndfc, ofdev->dev.of_node);
	if (err) {
		FUNC5(ndfc->ndfcbase);
		return err;
	}

	return 0;
}