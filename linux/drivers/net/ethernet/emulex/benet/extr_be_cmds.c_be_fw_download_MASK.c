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
struct image_hdr {int /*<<< orphan*/  imageid; } ;
struct flash_file_hdr_g3 {int /*<<< orphan*/  num_imgs; } ;
struct firmware {scalar_t__ data; } ;
struct device {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; int /*<<< orphan*/  va; } ;
struct be_cmd_write_flashrom {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,struct flash_file_hdr_g3*) ; 
 int FUNC2 (struct be_adapter*,struct firmware const*,struct be_dma_mem*,int) ; 
 int FUNC3 (struct be_adapter*,struct firmware const*,struct be_dma_mem*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct be_adapter*) ; 

int FUNC10(struct be_adapter *adapter, const struct firmware *fw)
{
	struct device *dev = &adapter->pdev->dev;
	struct flash_file_hdr_g3 *fhdr3;
	struct image_hdr *img_hdr_ptr;
	int status = 0, i, num_imgs;
	struct be_dma_mem flash_cmd;

	fhdr3 = (struct flash_file_hdr_g3 *)fw->data;
	if (!FUNC1(adapter, fhdr3)) {
		FUNC4(dev, "Flash image is not compatible with adapter\n");
		return -EINVAL;
	}

	flash_cmd.size = sizeof(struct be_cmd_write_flashrom);
	flash_cmd.va = FUNC6(dev, flash_cmd.size, &flash_cmd.dma,
					  GFP_KERNEL);
	if (!flash_cmd.va)
		return -ENOMEM;

	num_imgs = FUNC8(fhdr3->num_imgs);
	for (i = 0; i < num_imgs; i++) {
		img_hdr_ptr = (struct image_hdr *)(fw->data +
				(sizeof(struct flash_file_hdr_g3) +
				 i * sizeof(struct image_hdr)));
		if (!FUNC0(adapter) &&
		    FUNC8(img_hdr_ptr->imageid) != 1)
			continue;

		if (FUNC9(adapter))
			status = FUNC3(adapter, fw, &flash_cmd,
						  num_imgs);
		else
			status = FUNC2(adapter, fw, &flash_cmd,
					      num_imgs);
	}

	FUNC7(dev, flash_cmd.size, flash_cmd.va, flash_cmd.dma);
	if (!status)
		FUNC5(dev, "Firmware flashed successfully\n");

	return status;
}