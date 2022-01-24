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
typedef  int /*<<< orphan*/  const u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct pasemi_mac {int /*<<< orphan*/  mac_addr; struct pci_dev* pdev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC4 (struct device_node*,char*,int*) ; 
 struct device_node* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC6(struct pasemi_mac *mac)
{
	struct pci_dev *pdev = mac->pdev;
	struct device_node *dn = FUNC5(pdev);
	int len;
	const u8 *maddr;
	u8 addr[ETH_ALEN];

	if (!dn) {
		FUNC0(&pdev->dev,
			  "No device node for mac, not configuring\n");
		return -ENOENT;
	}

	maddr = FUNC4(dn, "local-mac-address", &len);

	if (maddr && len == ETH_ALEN) {
		FUNC3(mac->mac_addr, maddr, ETH_ALEN);
		return 0;
	}

	/* Some old versions of firmware mistakenly uses mac-address
	 * (and as a string) instead of a byte array in local-mac-address.
	 */

	if (maddr == NULL)
		maddr = FUNC4(dn, "mac-address", NULL);

	if (maddr == NULL) {
		FUNC1(&pdev->dev,
			 "no mac address in device tree, not configuring\n");
		return -ENOENT;
	}

	if (!FUNC2(maddr, addr)) {
		FUNC1(&pdev->dev,
			 "can't parse mac address, not configuring\n");
		return -EINVAL;
	}

	FUNC3(mac->mac_addr, addr, ETH_ALEN);

	return 0;
}