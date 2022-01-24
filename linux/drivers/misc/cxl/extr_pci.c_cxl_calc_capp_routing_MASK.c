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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

int FUNC8(struct pci_dev *dev, u64 *chipid,
			     u32 *phb_index, u64 *capp_unit_id)
{
	int rc;
	struct device_node *np;
	const __be32 *prop;

	if (!(np = FUNC6(dev)))
		return -ENODEV;

	while (np && !(prop = FUNC4(np, "ibm,chip-id", NULL)))
		np = FUNC3(np);
	if (!np)
		return -ENODEV;

	*chipid = FUNC0(prop);

	rc = FUNC2(np, phb_index);
	if (rc) {
		FUNC7("cxl: invalid phb index\n");
		return rc;
	}

	*capp_unit_id = FUNC1(np, *phb_index);
	FUNC5(np);
	if (!*capp_unit_id) {
		FUNC7("cxl: invalid capp unit id (phb_index: %d)\n",
		       *phb_index);
		return -ENODEV;
	}

	return 0;
}