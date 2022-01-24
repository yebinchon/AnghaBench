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
struct enetc_si {TYPE_1__* pdev; } ;
struct enetc_cmd_rfse {int dummy; } ;
struct enetc_cbd {int cls; void** addr; void** opt; void* length; void* index; scalar_t__ cmd; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (void*,scalar_t__) ; 
 scalar_t__ RFSE_ALIGN ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct enetc_si*,struct enetc_cbd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,struct enetc_cmd_rfse*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct enetc_si *si, struct enetc_cmd_rfse *rfse,
		       int index)
{
	struct enetc_cbd cbd = {.cmd = 0};
	dma_addr_t dma, dma_align;
	void *tmp, *tmp_align;
	int err;

	/* fill up the "set" descriptor */
	cbd.cmd = 0;
	cbd.cls = 4;
	cbd.index = FUNC2(index);
	cbd.length = FUNC2(sizeof(*rfse));
	cbd.opt[3] = FUNC3(0); /* SI */

	tmp = FUNC5(&si->pdev->dev, sizeof(*rfse) + RFSE_ALIGN,
				 &dma, GFP_KERNEL);
	if (!tmp) {
		FUNC4(&si->pdev->dev, "DMA mapping of RFS entry failed!\n");
		return -ENOMEM;
	}

	dma_align = FUNC0(dma, RFSE_ALIGN);
	tmp_align = FUNC1(tmp, RFSE_ALIGN);
	FUNC9(tmp_align, rfse, sizeof(*rfse));

	cbd.addr[0] = FUNC3(FUNC8(dma_align));
	cbd.addr[1] = FUNC3(FUNC10(dma_align));

	err = FUNC7(si, &cbd);
	if (err)
		FUNC4(&si->pdev->dev, "FS entry add failed (%d)!", err);

	FUNC6(&si->pdev->dev, sizeof(*rfse) + RFSE_ALIGN,
			  tmp, dma);

	return err;
}