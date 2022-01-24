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
typedef  int u64 ;
struct pci_dev {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  indications_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev, u64 *capiind, u64 *asnind,
			       u64 *nbwind)
{
	static u64 nbw, asn, capi = 0;
	struct device_node *np;
	const __be32 *prop;

	FUNC1(&indications_mutex);
	if (!capi) {
		if (!(np = FUNC5(dev))) {
			FUNC2(&indications_mutex);
			return -ENODEV;
		}

		prop = FUNC3(np, "ibm,phb-indications", NULL);
		if (!prop) {
			nbw = 0x0300UL; /* legacy values */
			asn = 0x0400UL;
			capi = 0x0200UL;
		} else {
			nbw = (u64)FUNC0(prop[2]);
			asn = (u64)FUNC0(prop[1]);
			capi = (u64)FUNC0(prop[0]);
		}
		FUNC4(np);
	}
	*capiind = capi;
	*asnind = asn;
	*nbwind = nbw;
	FUNC2(&indications_mutex);
	return 0;
}