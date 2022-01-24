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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct enetc_si {TYPE_1__* pdev; } ;
struct enetc_cbd {int cmd; int cls; void** addr; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__* FUNC1 (scalar_t__*,int) ; 
 int RSSE_ALIGN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct enetc_si*,struct enetc_cbd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct enetc_si *si, u32 *table, int count,
			       bool read)
{
	struct enetc_cbd cbd = {.cmd = 0};
	dma_addr_t dma, dma_align;
	u8 *tmp, *tmp_align;
	int err, i;

	if (count < RSSE_ALIGN)
		/* HW only takes in a full 64 entry table */
		return -EINVAL;

	tmp = FUNC5(&si->pdev->dev, count + RSSE_ALIGN,
				 &dma, GFP_KERNEL);
	if (!tmp) {
		FUNC4(&si->pdev->dev, "DMA mapping of RSS table failed!\n");
		return -ENOMEM;
	}
	dma_align = FUNC0(dma, RSSE_ALIGN);
	tmp_align = FUNC1(tmp, RSSE_ALIGN);

	if (!read)
		for (i = 0; i < count; i++)
			tmp_align[i] = (u8)(table[i]);

	/* fill up the descriptor */
	cbd.cmd = read ? 2 : 1;
	cbd.cls = 3;
	cbd.length = FUNC2(count);

	cbd.addr[0] = FUNC3(FUNC8(dma_align));
	cbd.addr[1] = FUNC3(FUNC9(dma_align));

	err = FUNC7(si, &cbd);
	if (err)
		FUNC4(&si->pdev->dev, "RSS cmd failed (%d)!", err);

	if (read)
		for (i = 0; i < count; i++)
			table[i] = tmp_align[i];

	FUNC6(&si->pdev->dev, count + RSSE_ALIGN, tmp, dma);

	return err;
}