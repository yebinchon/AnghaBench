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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct qlcnic_fw_dump {int use_pex_dma; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/ * dma_buffer; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/ * tmpl_hdr; } ;
struct qlcnic_hardware_context {struct qlcnic_fw_dump fw_dump; } ;
struct qlcnic_adapter {TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QLC_PEX_DMA_READ_SIZE ; 
 int FUNC0 (struct qlcnic_adapter*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,struct qlcnic_fw_dump*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 
 int FUNC6 (struct qlcnic_adapter*,scalar_t__*,scalar_t__) ; 
 int FUNC7 (struct qlcnic_adapter*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__) ; 

int FUNC11(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw;
	struct qlcnic_fw_dump *fw_dump;
	u32 version, csum, *tmp_buf;
	u8 use_flash_temp = 0;
	u32 temp_size = 0;
	void *temp_buffer;
	int err;

	ahw = adapter->ahw;
	fw_dump = &ahw->fw_dump;
	err = FUNC7(adapter, &version, &temp_size,
					       &use_flash_temp);
	if (err) {
		FUNC1(&adapter->pdev->dev,
			"Can't get template size %d\n", err);
		return -EIO;
	}

	fw_dump->tmpl_hdr = FUNC10(temp_size);
	if (!fw_dump->tmpl_hdr)
		return -ENOMEM;

	tmp_buf = (u32 *)fw_dump->tmpl_hdr;
	if (use_flash_temp)
		goto flash_temp;

	err = FUNC0(adapter, tmp_buf, temp_size);

	if (err) {
flash_temp:
		err = FUNC6(adapter, (u8 *)tmp_buf,
							temp_size);

		if (err) {
			FUNC1(&adapter->pdev->dev,
				"Failed to get minidump template header %d\n",
				err);
			FUNC9(fw_dump->tmpl_hdr);
			fw_dump->tmpl_hdr = NULL;
			return -EIO;
		}
	}

	csum = FUNC8((uint32_t *)tmp_buf, temp_size);

	if (csum) {
		FUNC1(&adapter->pdev->dev,
			"Template header checksum validation failed\n");
		FUNC9(fw_dump->tmpl_hdr);
		fw_dump->tmpl_hdr = NULL;
		return -EIO;
	}

	FUNC4(adapter, fw_dump);

	if (fw_dump->use_pex_dma) {
		fw_dump->dma_buffer = NULL;
		temp_buffer = FUNC3(&adapter->pdev->dev,
						 QLC_PEX_DMA_READ_SIZE,
						 &fw_dump->phys_addr,
						 GFP_KERNEL);
		if (!temp_buffer)
			fw_dump->use_pex_dma = false;
		else
			fw_dump->dma_buffer = temp_buffer;
	}


	FUNC2(&adapter->pdev->dev,
		 "Default minidump capture mask 0x%x\n",
		 fw_dump->cap_mask);

	FUNC5(adapter);

	return 0;
}