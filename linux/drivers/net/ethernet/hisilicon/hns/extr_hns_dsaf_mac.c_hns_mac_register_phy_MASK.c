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
struct platform_device {int dummy; } ;
struct mii_bus {int dummy; } ;
struct hns_mac_cb {int /*<<< orphan*/  mac_id; int /*<<< orphan*/  dev; int /*<<< orphan*/  fw_port; } ;
struct fwnode_reference_args {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct fwnode_reference_args*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mii_bus*,struct hns_mac_cb*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hns_mac_cb *mac_cb)
{
	struct fwnode_reference_args args;
	struct platform_device *pdev;
	struct mii_bus *mii_bus;
	int rc;
	int addr;

	/* Loop over the child nodes and register a phy_device for each one */
	if (!FUNC8(mac_cb->fw_port))
		return -ENODEV;

	rc = FUNC0(
			mac_cb->fw_port, "mdio-node", 0, &args);
	if (rc)
		return rc;
	if (!FUNC6(args.fwnode))
		return -EINVAL;

	addr = FUNC4(mac_cb->dev, mac_cb->fw_port);
	if (addr < 0)
		return addr;

	/* dev address in adev */
	pdev = FUNC3(args.fwnode);
	if (!pdev) {
		FUNC2(mac_cb->dev, "mac%d mdio pdev is NULL\n",
			mac_cb->mac_id);
		return  -EINVAL;
	}

	mii_bus = FUNC7(pdev);
	if (!mii_bus) {
		FUNC2(mac_cb->dev,
			"mac%d mdio is NULL, dsaf will probe again later\n",
			mac_cb->mac_id);
		return -EPROBE_DEFER;
	}

	rc = FUNC5(mii_bus, mac_cb, addr);
	if (!rc)
		FUNC1(mac_cb->dev, "mac%d register phy addr:%d\n",
			mac_cb->mac_id, addr);

	return rc;
}