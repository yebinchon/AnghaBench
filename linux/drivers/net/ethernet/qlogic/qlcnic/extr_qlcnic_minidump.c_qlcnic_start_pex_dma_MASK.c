#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_3__* ahw; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct __mem {int /*<<< orphan*/  start_dma_cmd; int /*<<< orphan*/  desc_card_addr; } ;
struct TYPE_5__ {void* tmpl_hdr; } ;
struct TYPE_6__ {TYPE_2__ fw_dump; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int BIT_1 ; 
 int EIO ; 
 int /*<<< orphan*/  QLC_83XX_DMA_ENGINE_INDEX ; 
 scalar_t__ QLC_DMA_CMD_BUFF_ADDR_HI ; 
 scalar_t__ QLC_DMA_CMD_BUFF_ADDR_LOW ; 
 scalar_t__ QLC_DMA_CMD_STATUS_CTRL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*,void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qlcnic_adapter*,scalar_t__) ; 
 int FUNC4 (struct qlcnic_adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct qlcnic_adapter *adapter,
				struct __mem *mem)
{
	struct device *dev = &adapter->pdev->dev;
	u32 dma_no, dma_base_addr, temp_addr;
	int i, ret, dma_sts;
	void *tmpl_hdr;

	tmpl_hdr = adapter->ahw->fw_dump.tmpl_hdr;
	dma_no = FUNC2(adapter, tmpl_hdr,
					QLC_83XX_DMA_ENGINE_INDEX);
	dma_base_addr = FUNC0(dma_no);

	temp_addr = dma_base_addr + QLC_DMA_CMD_BUFF_ADDR_LOW;
	ret = FUNC4(adapter, temp_addr, mem->desc_card_addr);
	if (ret)
		return ret;

	temp_addr = dma_base_addr + QLC_DMA_CMD_BUFF_ADDR_HI;
	ret = FUNC4(adapter, temp_addr, 0);
	if (ret)
		return ret;

	temp_addr = dma_base_addr + QLC_DMA_CMD_STATUS_CTRL;
	ret = FUNC4(adapter, temp_addr, mem->start_dma_cmd);
	if (ret)
		return ret;

	/* Wait for DMA to complete */
	temp_addr = dma_base_addr + QLC_DMA_CMD_STATUS_CTRL;
	for (i = 0; i < 400; i++) {
		dma_sts = FUNC3(adapter, temp_addr);

		if (dma_sts & BIT_1)
			FUNC5(250, 500);
		else
			break;
	}

	if (i >= 400) {
		FUNC1(dev, "PEX DMA operation timed out");
		ret = -EIO;
	}

	return ret;
}