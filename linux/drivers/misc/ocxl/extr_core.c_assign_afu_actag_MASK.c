#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct ocxl_fn {int actag_enabled; int actag_supported; scalar_t__ actag_base; TYPE_1__ dev; } ;
struct TYPE_4__ {int actag_supported; int /*<<< orphan*/  dvsec_afu_control_pos; } ;
struct ocxl_afu {int actag_enabled; scalar_t__ actag_base; TYPE_2__ config; struct ocxl_fn* fn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC2 (struct ocxl_fn*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ocxl_afu *afu)
{
	struct ocxl_fn *fn = afu->fn;
	int actag_count, actag_offset;
	struct pci_dev *pci_dev = FUNC4(fn->dev.parent);

	/*
	 * if there were not enough actags for the function, each afu
	 * reduces its count as well
	 */
	actag_count = afu->config.actag_supported *
		fn->actag_enabled / fn->actag_supported;
	actag_offset = FUNC2(fn, actag_count);
	if (actag_offset < 0) {
		FUNC1(&pci_dev->dev, "Can't allocate %d actags for AFU: %d\n",
			actag_count, actag_offset);
		return actag_offset;
	}
	afu->actag_base = fn->actag_base + actag_offset;
	afu->actag_enabled = actag_count;

	FUNC3(pci_dev, afu->config.dvsec_afu_control_pos,
				afu->actag_base, afu->actag_enabled);
	FUNC0(&pci_dev->dev, "actag base=%d enabled=%d\n",
		afu->actag_base, afu->actag_enabled);
	return 0;
}