#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct brcmf_pciedev_info {int dummy; } ;
struct brcmf_pciedev {struct brcmf_pciedev_info* devinfo; } ;
struct brcmf_fw_request {int dummy; } ;
struct TYPE_2__ {struct brcmf_pciedev* pcie; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int FUNC1 (struct device*,struct brcmf_fw_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pciedev_info*,int) ; 
 struct brcmf_fw_request* FUNC3 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  brcmf_pcie_setup ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 struct brcmf_bus* FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcmf_fw_request*) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct brcmf_bus *bus_if = FUNC9(dev);
	struct brcmf_pciedev *buspub = bus_if->bus_priv.pcie;
	struct brcmf_pciedev_info *devinfo = buspub->devinfo;
	struct brcmf_fw_request *fwreq;
	int err;

	FUNC2(devinfo, true);

	FUNC0(dev);

	FUNC4(devinfo);
	FUNC6(devinfo);
	FUNC5(devinfo);
	FUNC7(devinfo);

	fwreq = FUNC3(devinfo);
	if (!fwreq) {
		FUNC8(dev, "Failed to prepare FW request\n");
		return -ENOMEM;
	}

	err = FUNC1(dev, fwreq, brcmf_pcie_setup);
	if (err) {
		FUNC8(dev, "Failed to prepare FW request\n");
		FUNC10(fwreq);
	}

	return err;
}