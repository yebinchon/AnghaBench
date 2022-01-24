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
typedef  scalar_t__ u32 ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct brcmf_pciedev_info {scalar_t__ fw_name; scalar_t__ nvram_name; TYPE_2__* ci; TYPE_1__* pdev; } ;
struct brcmf_bus {int dummy; } ;
struct TYPE_4__ {scalar_t__ rambase; scalar_t__ ramsize; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BRCMF_PCIE_FW_UP_TIMEOUT ; 
 int ENODEV ; 
 int /*<<< orphan*/  PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_bus*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_pciedev_info*,scalar_t__,void*,scalar_t__) ; 
 int FUNC4 (struct brcmf_pciedev_info*) ; 
 int FUNC5 (struct brcmf_pciedev_info*,scalar_t__) ; 
 int FUNC6 (struct brcmf_pciedev_info*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct brcmf_pciedev_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct brcmf_pciedev_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct brcmf_bus* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct firmware const*) ; 

__attribute__((used)) static int FUNC13(struct brcmf_pciedev_info *devinfo,
					const struct firmware *fw, void *nvram,
					u32 nvram_len)
{
	struct brcmf_bus *bus = FUNC9(&devinfo->pdev->dev);
	u32 sharedram_addr;
	u32 sharedram_addr_written;
	u32 loop_counter;
	int err;
	u32 address;
	u32 resetintr;

	FUNC0(PCIE, "Halt ARM.\n");
	err = FUNC4(devinfo);
	if (err)
		return err;

	FUNC0(PCIE, "Download FW %s\n", devinfo->fw_name);
	FUNC3(devinfo, devinfo->ci->rambase,
				  (void *)fw->data, fw->size);

	resetintr = FUNC10(fw->data);
	FUNC12(fw);

	/* reset last 4 bytes of RAM address. to be used for shared
	 * area. This identifies when FW is running
	 */
	FUNC8(devinfo, devinfo->ci->ramsize - 4, 0);

	if (nvram) {
		FUNC0(PCIE, "Download NVRAM %s\n", devinfo->nvram_name);
		address = devinfo->ci->rambase + devinfo->ci->ramsize -
			  nvram_len;
		FUNC3(devinfo, address, nvram, nvram_len);
		FUNC2(nvram);
	} else {
		FUNC0(PCIE, "No matching NVRAM file found %s\n",
			  devinfo->nvram_name);
	}

	sharedram_addr_written = FUNC7(devinfo,
						       devinfo->ci->ramsize -
						       4);
	FUNC0(PCIE, "Bring ARM in running state\n");
	err = FUNC5(devinfo, resetintr);
	if (err)
		return err;

	FUNC0(PCIE, "Wait for FW init\n");
	sharedram_addr = sharedram_addr_written;
	loop_counter = BRCMF_PCIE_FW_UP_TIMEOUT / 50;
	while ((sharedram_addr == sharedram_addr_written) && (loop_counter)) {
		FUNC11(50);
		sharedram_addr = FUNC7(devinfo,
						       devinfo->ci->ramsize -
						       4);
		loop_counter--;
	}
	if (sharedram_addr == sharedram_addr_written) {
		FUNC1(bus, "FW failed to initialize\n");
		return -ENODEV;
	}
	if (sharedram_addr < devinfo->ci->rambase ||
	    sharedram_addr >= devinfo->ci->rambase + devinfo->ci->ramsize) {
		FUNC1(bus, "Invalid shared RAM address 0x%08x\n",
			  sharedram_addr);
		return -ENODEV;
	}
	FUNC0(PCIE, "Shared RAM addr: 0x%08x\n", sharedram_addr);

	return (FUNC6(devinfo, sharedram_addr));
}