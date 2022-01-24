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
struct pci_dev {int dummy; } ;
struct ocxl_fn {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ocxl_fn* FUNC0 (int) ; 
 struct ocxl_fn* FUNC1 () ; 
 int FUNC2 (struct ocxl_fn*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocxl_fn*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ocxl_fn*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ocxl_fn *FUNC7(struct pci_dev *dev)
{
	struct ocxl_fn *fn;
	int rc;

	fn = FUNC1();
	if (!fn)
		return FUNC0(-ENOMEM);

	rc = FUNC2(fn, dev);
	if (rc) {
		FUNC5(fn);
		return FUNC0(rc);
	}

	rc = FUNC4(&fn->dev);
	if (rc) {
		FUNC3(fn);
		FUNC6(&fn->dev);
		return FUNC0(rc);
	}
	return fn;
}