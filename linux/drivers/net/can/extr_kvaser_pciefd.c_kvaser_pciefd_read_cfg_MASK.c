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
typedef  int u8 ;
struct kvaser_pciefd_cfg_img {int dummy; } ;
struct kvaser_pciefd {TYPE_1__* pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KVASER_PCIEFD_CFG_IMG_SZ ; 
 int KVASER_PCIEFD_FLASH_ID_EPCS16 ; 
 int KVASER_PCIEFD_FLASH_RES_CMD ; 
 int KVASER_PCIEFD_FLASH_STATUS_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct kvaser_pciefd_cfg_img*) ; 
 struct kvaser_pciefd_cfg_img* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kvaser_pciefd*,struct kvaser_pciefd_cfg_img*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvaser_pciefd*,struct kvaser_pciefd_cfg_img*) ; 
 int FUNC6 (struct kvaser_pciefd*,int*,int,int*,int) ; 

__attribute__((used)) static int FUNC7(struct kvaser_pciefd *pcie)
{
	int res;
	struct kvaser_pciefd_cfg_img *img;

	/* Read electronic signature */
	u8 cmd[] = {KVASER_PCIEFD_FLASH_RES_CMD, 0, 0, 0};

	res = FUNC6(pcie, cmd, FUNC0(cmd), cmd, 1);
	if (res)
		return -EIO;

	img = FUNC3(KVASER_PCIEFD_CFG_IMG_SZ, GFP_KERNEL);
	if (!img)
		return -ENOMEM;

	if (cmd[0] != KVASER_PCIEFD_FLASH_ID_EPCS16) {
		FUNC1(&pcie->pci->dev,
			"Flash id is 0x%x instead of expected EPCS16 (0x%x)\n",
			cmd[0], KVASER_PCIEFD_FLASH_ID_EPCS16);

		res = -ENODEV;
		goto image_free;
	}

	cmd[0] = KVASER_PCIEFD_FLASH_STATUS_CMD;
	res = FUNC6(pcie, cmd, 1, cmd, 1);
	if (res) {
		goto image_free;
	} else if (cmd[0] & 1) {
		res = -EIO;
		/* No write is ever done, the WIP should never be set */
		FUNC1(&pcie->pci->dev, "Unexpected WIP bit set in flash\n");
		goto image_free;
	}

	res = FUNC4(pcie, img);
	if (res) {
		res = -EIO;
		goto image_free;
	}

	FUNC5(pcie, img);

image_free:
	FUNC2(img);
	return res;
}