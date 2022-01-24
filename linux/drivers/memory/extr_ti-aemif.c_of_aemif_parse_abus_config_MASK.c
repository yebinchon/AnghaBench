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
typedef  scalar_t__ u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct aemif_device {scalar_t__ cs_offset; scalar_t__ num_cs; struct aemif_cs_data* cs_data; } ;
struct aemif_cs_data {int asize; void* enable_ss; void* enable_ew; scalar_t__ wsetup; scalar_t__ wstrobe; scalar_t__ whold; scalar_t__ rsetup; scalar_t__ rstrobe; scalar_t__ rhold; scalar_t__ ta; scalar_t__ cs; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NUM_CS ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC2 (struct device_node*,char*) ; 
 scalar_t__ FUNC3 (struct device_node*,char*,scalar_t__*) ; 
 struct aemif_device* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
				      struct device_node *np)
{
	struct aemif_device *aemif = FUNC4(pdev);
	struct aemif_cs_data *data;
	u32 cs;
	u32 val;

	if (FUNC3(np, "ti,cs-chipselect", &cs)) {
		FUNC1(&pdev->dev, "cs property is required");
		return -EINVAL;
	}

	if (cs - aemif->cs_offset >= NUM_CS || cs < aemif->cs_offset) {
		FUNC1(&pdev->dev, "cs number is incorrect %d", cs);
		return -EINVAL;
	}

	if (aemif->num_cs >= NUM_CS) {
		FUNC1(&pdev->dev, "cs count is more than %d", NUM_CS);
		return -EINVAL;
	}

	data = &aemif->cs_data[aemif->num_cs];
	data->cs = cs;

	/* read the current value in the hw register */
	FUNC0(pdev, aemif->num_cs++);

	/* override the values from device node */
	if (!FUNC3(np, "ti,cs-min-turnaround-ns", &val))
		data->ta = val;

	if (!FUNC3(np, "ti,cs-read-hold-ns", &val))
		data->rhold = val;

	if (!FUNC3(np, "ti,cs-read-strobe-ns", &val))
		data->rstrobe = val;

	if (!FUNC3(np, "ti,cs-read-setup-ns", &val))
		data->rsetup = val;

	if (!FUNC3(np, "ti,cs-write-hold-ns", &val))
		data->whold = val;

	if (!FUNC3(np, "ti,cs-write-strobe-ns", &val))
		data->wstrobe = val;

	if (!FUNC3(np, "ti,cs-write-setup-ns", &val))
		data->wsetup = val;

	if (!FUNC3(np, "ti,cs-bus-width", &val))
		if (val == 16)
			data->asize = 1;
	data->enable_ew = FUNC2(np, "ti,cs-extended-wait-mode");
	data->enable_ss = FUNC2(np, "ti,cs-select-strobe-mode");
	return 0;
}