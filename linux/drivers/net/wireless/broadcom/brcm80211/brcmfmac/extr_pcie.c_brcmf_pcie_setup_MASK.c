#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct firmware {int /*<<< orphan*/  size; scalar_t__ data; } ;
struct device {int dummy; } ;
struct TYPE_15__ {size_t max_flowrings; int /*<<< orphan*/  max_rxbufpost; int /*<<< orphan*/  rx_dataoffset; TYPE_5__* flowrings; TYPE_4__** commonrings; } ;
struct brcmf_pciedev_info {TYPE_8__* pdev; int /*<<< orphan*/  mbdata_resp_wait; TYPE_7__ shared; int /*<<< orphan*/  state; int /*<<< orphan*/  ci; } ;
struct brcmf_pciedev {struct brcmf_pciedev_info* devinfo; } ;
struct brcmf_fw_request {TYPE_3__* items; } ;
struct brcmf_commonring {int dummy; } ;
struct TYPE_9__ {struct brcmf_pciedev* pcie; } ;
struct brcmf_bus {TYPE_6__* msgbuf; TYPE_1__ bus_priv; } ;
struct TYPE_16__ {int /*<<< orphan*/  dev; } ;
struct TYPE_14__ {size_t max_flowrings; int /*<<< orphan*/  max_rxbufpost; int /*<<< orphan*/  rx_dataoffset; struct brcmf_commonring** flowrings; int /*<<< orphan*/ ** commonrings; } ;
struct TYPE_13__ {struct brcmf_commonring commonring; } ;
struct TYPE_12__ {int /*<<< orphan*/  commonring; } ;
struct TYPE_10__ {size_t len; void* data; } ;
struct TYPE_11__ {TYPE_2__ nv_data; struct firmware* binary; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CORE_PCIE2 ; 
 int /*<<< orphan*/  BRCMFMAC_PCIE_STATE_UP ; 
 size_t BRCMF_NROF_COMMON_MSGRINGS ; 
 size_t BRCMF_PCIE_FW_CODE ; 
 size_t BRCMF_PCIE_FW_NVRAM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_bus*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_pciedev_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_pciedev_info*,int) ; 
 int FUNC6 (struct brcmf_pciedev_info*,struct firmware const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct brcmf_pciedev_info*) ; 
 int FUNC8 (struct brcmf_pciedev_info*) ; 
 int FUNC9 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcmf_pciedev_info*) ; 
 int FUNC11 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ) ; 
 struct brcmf_bus* FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct brcmf_commonring** FUNC16 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct brcmf_fw_request*) ; 

__attribute__((used)) static void FUNC18(struct device *dev, int ret,
			     struct brcmf_fw_request *fwreq)
{
	const struct firmware *fw;
	void *nvram;
	struct brcmf_bus *bus;
	struct brcmf_pciedev *pcie_bus_dev;
	struct brcmf_pciedev_info *devinfo;
	struct brcmf_commonring **flowrings;
	u32 i, nvram_len;

	/* check firmware loading result */
	if (ret)
		goto fail;

	bus = FUNC13(dev);
	pcie_bus_dev = bus->bus_priv.pcie;
	devinfo = pcie_bus_dev->devinfo;
	FUNC4(devinfo);

	fw = fwreq->items[BRCMF_PCIE_FW_CODE].binary;
	nvram = fwreq->items[BRCMF_PCIE_FW_NVRAM].nv_data.data;
	nvram_len = fwreq->items[BRCMF_PCIE_FW_NVRAM].nv_data.len;
	FUNC17(fwreq);

	ret = FUNC1(devinfo->ci);
	if (ret) {
		FUNC2(bus, "Failed to get RAM info\n");
		goto fail;
	}

	/* Some of the firmwares have the size of the memory of the device
	 * defined inside the firmware. This is because part of the memory in
	 * the device is shared and the devision is determined by FW. Parse
	 * the firmware and adjust the chip memory size now.
	 */
	FUNC3(devinfo, (u8 *)fw->data, fw->size);

	ret = FUNC6(devinfo, fw, nvram, nvram_len);
	if (ret)
		goto fail;

	devinfo->state = BRCMFMAC_PCIE_STATE_UP;

	ret = FUNC8(devinfo);
	if (ret)
		goto fail;

	ret = FUNC9(devinfo);
	if (ret)
		goto fail;

	FUNC12(devinfo, BCMA_CORE_PCIE2);
	ret = FUNC11(devinfo);
	if (ret)
		goto fail;

	/* hook the commonrings in the bus structure. */
	for (i = 0; i < BRCMF_NROF_COMMON_MSGRINGS; i++)
		bus->msgbuf->commonrings[i] =
				&devinfo->shared.commonrings[i]->commonring;

	flowrings = FUNC16(devinfo->shared.max_flowrings, sizeof(*flowrings),
			    GFP_KERNEL);
	if (!flowrings)
		goto fail;

	for (i = 0; i < devinfo->shared.max_flowrings; i++)
		flowrings[i] = &devinfo->shared.flowrings[i].commonring;
	bus->msgbuf->flowrings = flowrings;

	bus->msgbuf->rx_dataoffset = devinfo->shared.rx_dataoffset;
	bus->msgbuf->max_rxbufpost = devinfo->shared.max_rxbufpost;
	bus->msgbuf->max_flowrings = devinfo->shared.max_flowrings;

	FUNC15(&devinfo->mbdata_resp_wait);

	FUNC10(devinfo);
	FUNC7(devinfo);

	ret = FUNC0(&devinfo->pdev->dev);
	if (ret)
		goto fail;

	FUNC5(devinfo, false);

	return;

fail:
	FUNC14(dev);
}