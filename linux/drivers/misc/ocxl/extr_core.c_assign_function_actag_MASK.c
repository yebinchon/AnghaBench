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
typedef  void* u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  dvsec_function_pos; } ;
struct ocxl_fn {void* actag_enabled; void* actag_base; TYPE_2__ dev; TYPE_1__ config; void* actag_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,void*,void*) ; 
 int FUNC1 (struct pci_dev*,void**,void**,void**) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,void*,void*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ocxl_fn *fn)
{
	struct pci_dev *dev = FUNC3(fn->dev.parent);
	u16 base, enabled, supported;
	int rc;

	rc = FUNC1(dev, &base, &enabled, &supported);
	if (rc)
		return rc;

	fn->actag_base = base;
	fn->actag_enabled = enabled;
	fn->actag_supported = supported;

	FUNC2(dev, fn->config.dvsec_function_pos,
			fn->actag_base,	fn->actag_enabled);
	FUNC0(&fn->dev, "actag range starting at %d, enabled %d\n",
		fn->actag_base, fn->actag_enabled);
	return 0;
}